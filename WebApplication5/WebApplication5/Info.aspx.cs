using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

/*  Class Color Hex Codes
Attendance Good color = #b7e1cd
Attendance Bad color = #f4c7c3

Tank header color = #cc4125
DPS Warrior header color = #cc4125
Warrior table color = #e6b8af

Rogue header color = #ffff00
Rogue table color = #ffe599

Hunter header color = #6aa84f
Hunter table color = #b6d7a8

Druid header color = #ff9900
Druid table color = #f9cb9c

Paladin header color = #ff00ff
Paladin table color = #d5a6bd

Priest header color = #000000
Priest table color = #cccccc

Mage header color = #4a86e8
Mage table color = #c9daf8

Warlock header color = #674ea7
Warlock table color = #b4a7d6
*/


namespace WebApplication5
{
    public partial class Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            if (!IsPostBack)
            {
                createClassGrid("Warrior", "DPS", dpsWarriorGridView, "#CC4125", "#E6B8AF", "DPS War");
                createClassGrid("Warrior", "Tank", tankWarriorGridView, "#CC4125", "#E6B8AF", "Tank");
                createClassGrid("Rogue", "", rogueGridView, "#ffff00", "#ffe599", "Rogue");
                createClassGrid("Hunter", "", hunterGridView, "#6aa84f", "#b6d7a8", "Hunter");
                createClassGrid("Druid", "", druidGridView, "#ff9900", "#f9cb9c", "Druid");
                createClassGrid("Paladin", "", paladinGridView, "#ff00ff", "#d5a6bd", "Paladin");
                createClassGrid("Priest", "", priestGridView, "#000000", "#cccccc", "Priest");
                createClassGrid("Mage", "", mageGridView, "#a86e8", "#c9daf8", "Mage");
                createClassGrid("Warlock", "Shadow", warlockGridView, "#674ea7", "#b4a7d6", "Warlock");
            }
        }

        public void createClassGrid(string playerClass, string playerSubClass, GridView GridViewName, string hexColorInfoRows, string hexColorHeaderRows, string playerGroupHeaderText)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();

            command.CommandType = CommandType.Text;
            if (playerClass.Equals("Warlock") &&  playerSubClass.Equals("Shadow"))
            {
                command.CommandText = "SELECT PlayerName from Roster where PlayerClass = @PlayerClass or SubClass = @SubClass";
            }
            else
            {
                command.CommandText = "SELECT PlayerName from Roster where PlayerClass = @PlayerClass and SubClass = @SubClass";
            }            
            command.Parameters.AddWithValue("@PlayerClass", playerClass);
            command.Parameters.AddWithValue("@SubClass", playerSubClass);

            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dtPlayers = new DataTable();
            da.Fill(dtPlayers);

            DataTable dtInfo = new DataTable();
            dtInfo.Columns.Add("PlayerName");
            dtInfo.Columns.Add("ForeverLootScore");
            dtInfo.Columns.Add("ForeverAttendanceValue");
            //dtInfo.Columns.Add("RecentAttendanceValue");
            dtInfo.Columns.Add("RecentPercentageAttendance");
            dtInfo.Columns.Add("PvpLootScore");

            foreach (DataRow playerRow in dtPlayers.Rows)
            {
                string playerName = playerRow["PlayerName"].ToString();

                DataTable dtSinglePlayer = getPlayerInfo(playerName);
                DataRow dr = dtInfo.NewRow();
                foreach (DataRow singlePlayerRow in dtSinglePlayer.Rows)
                {
                    dtInfo.Rows.Add(new Object[]
                    {
                        singlePlayerRow["PlayerName"].ToString(),
                        singlePlayerRow["ForeverLootScore"].ToString(),
                        singlePlayerRow["ForeverAttendanceValue"].ToString(),
                        //singlePlayerRow["RecentAttendanceValue"].ToString(),
                        singlePlayerRow["RecentPercentageAttendance"].ToString(),
                        singlePlayerRow["PvpLootScore"].ToString()
                    });
                }
            }

            if (GridViewName.Rows.Count < 10)
            {
                int rowsToAdd = 10 - dtInfo.Rows.Count;
                int x = 5;
                for (int i = 0; i < rowsToAdd; i++)
                {
                    dtInfo.Rows.Add(new Object[]
                    {
                        "",
                        "0",
                        "0",
                        //singlePlayerRow["RecentAttendanceValue"].ToString(),
                        "",
                        "0"
                    });
                }
            }

            GridViewName.DataSource = dtInfo;
            GridViewName.DataBind();

            // Head Rows
            Color headerRowClassColor = ColorTranslator.FromHtml(hexColorInfoRows);
            GridViewName.HeaderRow.BackColor = headerRowClassColor;

            // Rest of Rows Colors
            Color infoRowsClassColor = ColorTranslator.FromHtml(hexColorHeaderRows);
            GridViewName.RowStyle.BackColor = infoRowsClassColor;



            connection.Close();
        }

     

        public DataTable getPlayerInfo(string playerName) // This method assumes we've already broken players down into classes/subclasses
        {
            DataTable dt = new DataTable();

            string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();

            command.CommandType = CommandType.Text; // TODO - Change DISTINCT statement to 8 raids during beginning / 16 raids once BWL starts
            command.CommandText = @"SELECT 
	                                (select PlayerName from Roster where PlayerName = @PlayerName) as PlayerName, 
	                                (select LootScore from Roster where PlayerName = @PlayerName) as ForeverLootScore, 
	                                (select sum(AttendanceValue) from Attendance where PlayerName = @PlayerName) as ForeverAttendanceValue,
	                                SUM(RecentAttendance.AttendanceValue) as RecentAttendanceValue,
	                                --count (RaidDate) as totalRecentRaids,
	                                Cast(CONVERT(Decimal(10,2),(SUM(RecentAttendance.AttendanceValue) * 100.0 / count(RecentAttendance.RaidDate))) as decimal(10,2)) 
		                                as RecentPercentageAttendance,
                                    (select PvpLootScore from Roster where PlayerName = @PlayerName) as PvpLootScore
                                FROM 
	                                (SELECT DISTINCT TOP 5 * FROM Attendance WHERE PlayerName = @PlayerName ORDER BY RaidDate DESC) RecentAttendance 
											                                inner join Roster on Roster.PlayerName = RecentAttendance.PlayerName
                                WHERE
                                    Roster.IsActive = 1
                                GROUP BY 
	                                RecentAttendance.PlayerName, RaidsAttended, LootScore, RaidsAttended";

            command.Parameters.AddWithValue("PlayerName", playerName);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dtPlayers = new DataTable();
            da.Fill(dt);

            return dt;
        }

        

        private void colorGridAttendanceColumn(GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                for (int i = 0; i < e.Row.Cells.Count; i++)
                {
                    e.Row.Cells[i].Width = 100;
                }

                for (int i = 0; i < e.Row.Cells.Count; i++)
                {
                    if (i == 3) // column index of Percentage Attendance for each player
                    {
                        try
                        {
                            decimal attendancePercentage = Decimal.Parse(e.Row.Cells[i].Text);
                            if (attendancePercentage > 85)
                            {
                                e.Row.Cells[i].BackColor = Color.FromArgb(183, 225, 205); // #b7e1cd Good Attendance color
                                e.Row.Cells[i].Text = e.Row.Cells[i].Text + "%";
                            }
                            else
                            {
                                e.Row.Cells[i].BackColor = Color.FromArgb(244, 199, 195);
                                e.Row.Cells[i].Text = e.Row.Cells[i].Text + "%";
                            }
                        }
                        catch { continue; }
                    }
                }
            }
        }


        protected void dpsWarriorGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            colorGridAttendanceColumn(e);
        }

        protected void tankWarriorGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            colorGridAttendanceColumn(e);
        }

        protected void rogueGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            colorGridAttendanceColumn(e);
        }

        protected void hunterGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            colorGridAttendanceColumn(e);
        }

        protected void druidGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            colorGridAttendanceColumn(e);
        }

        protected void paladinGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            colorGridAttendanceColumn(e);
        }

        protected void priestGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            colorGridAttendanceColumn(e);
        }

        protected void mageGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            colorGridAttendanceColumn(e);
        }

        protected void warlockGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            colorGridAttendanceColumn(e);
        }

        protected void getPlayerLootHistory_Click(object sender, EventArgs e)
        {
            if (comboPlayer1.SelectedIndex != -1)
            {
                labelT1.Visible = true;
                labelMC.Visible = true;
                labelOny.Visible = true;
                labelT2.Visible = true;
                labelBWL.Visible = true;
                labelT25.Visible = true;
                labelAQ.Visible = true;
                labelT3.Visible = true;
                labelNaxx.Visible = true;

                DataTable dtWowheadLinks = new DataTable();

                string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                SqlCommand command = connection.CreateCommand();
                command.CommandType = CommandType.Text;

                #region Get Player Class For Tier Search
                SqlCommand playerClassCommand = connection.CreateCommand();
                playerClassCommand.CommandType = CommandType.Text;
                playerClassCommand.CommandText = "select PlayerClass from Roster where PlayerName = @PlayerName";
                playerClassCommand.Parameters.AddWithValue("PlayerName", comboPlayer1.SelectedValue);
                DataTable playerClassDt = new DataTable();
                SqlDataAdapter classDa = new SqlDataAdapter(playerClassCommand);
                classDa.Fill(playerClassDt);
                string playerClass = string.Empty;
                if(playerClassDt != null && playerClassDt.Rows.Count != 0)
                {
                    playerClass = playerClassDt.Rows[0]["PlayerClass"].ToString();
                }
                #endregion

                #region MC Loot
                command.CommandText = @"select distinct PlayerLoot.ItemName, Loot.wowheadLink from PlayerLoot inner join Loot on PlayerLoot.ItemName = Loot.ItemName where PlayerLoot.PlayerName = @PlayerName and Loot.RaidName = 'MC'";
            
                command.Parameters.AddWithValue("PlayerName", comboPlayer1.SelectedValue);
            
                SqlDataAdapter da = new SqlDataAdapter(command);
                da.Fill(dtWowheadLinks);

                StringBuilder lootMC = new StringBuilder();
                StringBuilder lootT1 = new StringBuilder();
                StringBuilder lootT2 = new StringBuilder();
                literalMC.Text = "<table>";
                literalT1.Text = "<table>";
                literalT2.Text = "<table>";
            
                foreach (DataRow linkName in dtWowheadLinks.Rows)
                {

                    string itemName = linkName["ItemName"].ToString();
                    if(itemName.Contains("T1"))
                    {
                        string itemSlot = itemName.Substring(2);
                        DataTable tier1ItemDt = new DataTable();
                        SqlCommand getTier1ItemCommand = connection.CreateCommand();
                        getTier1ItemCommand.CommandType = CommandType.Text;
                        getTier1ItemCommand.CommandText = "select wowheadLink from TierSets where Class = @Class and Tier = 1 and ItemSlot = @ItemSlot";
                        getTier1ItemCommand.Parameters.AddWithValue("@Class", playerClass);
                        getTier1ItemCommand.Parameters.AddWithValue("@ItemSlot", itemSlot);
                        SqlDataAdapter tier1ItemDa = new SqlDataAdapter(getTier1ItemCommand);
                        tier1ItemDa.Fill(tier1ItemDt);
                        string tier1wowheadLink = tier1ItemDt.Rows[0]["wowheadLink"].ToString();
                        lootT1.Append("<tr><td><a href=" + tier1wowheadLink + "</a></td></tr>");
                    }
                    else if (itemName.Contains("T2"))
                    {
                        string itemSlot = itemName.Substring(2);
                        DataTable tier2ItemDt = new DataTable();
                        SqlCommand getTier2ItemCommand = connection.CreateCommand();
                        getTier2ItemCommand.CommandType = CommandType.Text;
                        getTier2ItemCommand.CommandText = "select wowheadLink from TierSets where Class = @Class and Tier = 2 and ItemSlot = @ItemSlot";
                        getTier2ItemCommand.Parameters.AddWithValue("@Class", playerClass);
                        getTier2ItemCommand.Parameters.AddWithValue("@ItemSlot", itemSlot);
                        SqlDataAdapter tier1ItemDa = new SqlDataAdapter(getTier2ItemCommand);
                        tier1ItemDa.Fill(tier2ItemDt);
                        string tier2wowheadLink = tier2ItemDt.Rows[0]["wowheadLink"].ToString();
                        lootT2.Append("<tr><td><a href=" + tier2wowheadLink + "</a></td></tr>");
                    }
                    else
                    {
                        string wowheadLink = linkName["wowheadLink"].ToString();
                        lootMC.Append("<tr><td><a href=" + wowheadLink + "</a></td></tr>");
                    }
                }

                literalT1.Text = literalT1.Text + lootT1.ToString() + "</table>";
                literalMC.Text = literalMC.Text + lootMC.ToString() + "</table>";
                literalT2.Text = literalT2.Text + lootT2.ToString(); // Must search MC, Ony, and BWL regions before closing this with a </table> tag
            
                #endregion

                #region Ony Loot
                dtWowheadLinks.Clear();
                command.CommandText = @"select distinct PlayerLoot.ItemName, Loot.wowheadLink from PlayerLoot inner join Loot on PlayerLoot.ItemName = Loot.ItemName where PlayerLoot.PlayerName = @PlayerName and Loot.RaidName = 'Ony'";

                da = new SqlDataAdapter(command);
                da.Fill(dtWowheadLinks);

                StringBuilder lootOny = new StringBuilder();
                literalOny.Text = "<table>";
                foreach (DataRow linkName in dtWowheadLinks.Rows)
                {
                    string itemName = linkName["ItemName"].ToString();
                    if (itemName.Contains("T2"))
                    {
                        string itemSlot = itemName.Substring(2);
                        DataTable tier2ItemDt = new DataTable();
                        SqlCommand getTier2ItemCommand = connection.CreateCommand();
                        getTier2ItemCommand.CommandType = CommandType.Text;
                        getTier2ItemCommand.CommandText = "select wowheadLink from TierSets where Class = @Class and Tier = 2 and ItemSlot = @ItemSlot";
                        getTier2ItemCommand.Parameters.AddWithValue("@Class", playerClass);
                        getTier2ItemCommand.Parameters.AddWithValue("@ItemSlot", itemSlot);
                        SqlDataAdapter tier1ItemDa = new SqlDataAdapter(getTier2ItemCommand);
                        tier1ItemDa.Fill(tier2ItemDt);
                        string tier2wowheadLink = tier2ItemDt.Rows[0]["wowheadLink"].ToString();
                        lootT2.Append("<tr><td><a href=" + tier2wowheadLink + "</a></td></tr>");
                    }
                    else
                    {
                        string wowheadLink = linkName["wowheadLink"].ToString();
                        lootOny.Append("<tr><td><a href=" + wowheadLink + "</a></td></tr>");
                    }
                }
                literalOny.Text = literalOny.Text + lootOny.ToString() + "</table>";
                literalT2.Text = literalT2.Text + lootT2.ToString(); // Must search MC, Ony, and BWL regions before closing this with a </table> tag

                #endregion

                #region BWL Loot
                dtWowheadLinks.Clear();
                command.CommandText = @"select distinct PlayerLoot.ItemName, Loot.wowheadLink from PlayerLoot inner join Loot on PlayerLoot.ItemName = Loot.ItemName where PlayerLoot.PlayerName = @PlayerName and Loot.RaidName = 'BWL'";

                da = new SqlDataAdapter(command);
                da.Fill(dtWowheadLinks);

                StringBuilder lootBWL = new StringBuilder();
                literalBWL.Text = "<table>";
                foreach (DataRow linkName in dtWowheadLinks.Rows)
                {
                    string itemName = linkName["ItemName"].ToString();
                    if (itemName.Contains("T2"))
                    {
                        string itemSlot = itemName.Substring(2);
                        DataTable tier2ItemDt = new DataTable();
                        SqlCommand getTier2ItemCommand = connection.CreateCommand();
                        getTier2ItemCommand.CommandType = CommandType.Text;
                        getTier2ItemCommand.CommandText = "select wowheadLink from TierSets where Class = @Class and Tier = 2 and ItemSlot = @ItemSlot";
                        getTier2ItemCommand.Parameters.AddWithValue("@Class", playerClass);
                        getTier2ItemCommand.Parameters.AddWithValue("@ItemSlot", itemSlot);
                        SqlDataAdapter tier2ItemDa = new SqlDataAdapter(getTier2ItemCommand);
                        tier2ItemDa.Fill(tier2ItemDt);
                        string tier2wowheadLink = tier2ItemDt.Rows[0]["wowheadLink"].ToString();
                        lootT2.Append("<tr><td><a href=" + tier2wowheadLink + "</a></td></tr>");
                    }
                    else
                    {
                        string wowheadLink = linkName["wowheadLink"].ToString();
                        lootBWL.Append("<tr><td><a href=" + wowheadLink + "</a></td></tr>");
                    }

                }
                literalBWL.Text = literalBWL.Text + lootBWL.ToString() + "</table>";
                literalT2.Text = literalT2.Text + lootT2.ToString() + "</table>"; // Finished searching MC, Ony, and BWL loot for T2. Put </table> tag on the literalT2
                #endregion

                #region AQ Loot            
                dtWowheadLinks.Clear();
                command.CommandText = @"select distinct PlayerLoot.ItemName, Loot.wowheadLink from PlayerLoot inner join Loot on PlayerLoot.ItemName = Loot.ItemName where PlayerLoot.PlayerName = @PlayerName and Loot.RaidName = 'AQ40'";

                da = new SqlDataAdapter(command);
                da.Fill(dtWowheadLinks);

                StringBuilder lootAQ = new StringBuilder();
                StringBuilder lootT25 = new StringBuilder();
                literalAQ.Text = "<table>";
                literalT25.Text = "<table>";
                foreach (DataRow linkName in dtWowheadLinks.Rows)
                {
                    string itemName = linkName["ItemName"].ToString();
                    if (itemName.Contains("T2.5"))
                    {
                        string itemSlot = itemName.Substring(4);
                        DataTable tier25ItemDt = new DataTable();
                        SqlCommand getTier25ItemCommand = connection.CreateCommand();
                        getTier25ItemCommand.CommandType = CommandType.Text;
                        getTier25ItemCommand.CommandText = "select wowheadLink from TierSets where Class = @Class and Tier = 25 and ItemSlot = @ItemSlot";
                        getTier25ItemCommand.Parameters.AddWithValue("@Class", playerClass);
                        getTier25ItemCommand.Parameters.AddWithValue("@ItemSlot", itemSlot);
                        SqlDataAdapter tier25ItemDa = new SqlDataAdapter(getTier25ItemCommand);
                        tier25ItemDa.Fill(tier25ItemDt);
                        string tier25wowheadLink = tier25ItemDt.Rows[0]["wowheadLink"].ToString();
                        lootT25.Append("<tr><td><a href=" + tier25wowheadLink + "</a></td></tr>");
                    }
                    else
                    {
                        string wowheadLink = linkName["wowheadLink"].ToString();
                        lootAQ.Append("<tr><td><a href=" + wowheadLink + "</a></td></tr>");
                    }
                }
                literalAQ.Text = literalAQ.Text + lootAQ.ToString() + "</table>";
                literalT25.Text = literalT25.Text + lootT25.ToString() + "</table>";
                #endregion

                #region Naxx Loot
                dtWowheadLinks.Clear();
                command.CommandText = @"select distinct PlayerLoot.ItemName, Loot.wowheadLink from PlayerLoot inner join Loot on PlayerLoot.ItemName = Loot.ItemName where PlayerLoot.PlayerName = @PlayerName and Loot.RaidName = 'Naxx'";

                da = new SqlDataAdapter(command);
                da.Fill(dtWowheadLinks);

                StringBuilder lootNaxx = new StringBuilder();
                StringBuilder lootT3 = new StringBuilder();
                literalNaxx.Text = "<table>";
                literalT3.Text = "<table>";
                foreach (DataRow linkName in dtWowheadLinks.Rows)
                {
                    string itemName = linkName["ItemName"].ToString();
                    if (itemName.Contains("T3"))
                    {
                        string itemSlot = itemName.Substring(2);
                        DataTable tier3ItemDt = new DataTable();
                        SqlCommand getTier3ItemCommand = connection.CreateCommand();
                        getTier3ItemCommand.CommandType = CommandType.Text;
                        getTier3ItemCommand.CommandText = "select wowheadLink from TierSets where Class = @Class and Tier = 3 and ItemSlot = @ItemSlot";
                        getTier3ItemCommand.Parameters.AddWithValue("@Class", playerClass);
                        getTier3ItemCommand.Parameters.AddWithValue("@ItemSlot", itemSlot);
                        SqlDataAdapter tier3ItemDa = new SqlDataAdapter(getTier3ItemCommand);
                        tier3ItemDa.Fill(tier3ItemDt);
                        string tier3wowheadLink = tier3ItemDt.Rows[0]["wowheadLink"].ToString();
                        lootT3.Append("<tr><td><a href=" + tier3wowheadLink + "</a></td></tr>");
                    }
                    else
                    {
                        string wowheadLink = linkName["wowheadLink"].ToString();
                        lootNaxx.Append("<tr><td><a href=" + wowheadLink + "</a></td></tr>");
                    }


                }
                literalNaxx.Text = literalNaxx.Text + lootNaxx.ToString() + "</table>";
                literalT3.Text = literalT3.Text + lootT3.ToString() + "</table>";
                    #endregion
            }
        }

        protected void getPlayersWithItem_Click(object sender, EventArgs e)
        {
            string getPlayersWithItem = "select PlayerName from PlayerLoot where Itemname = @ItemName";

            string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand command = connection.CreateCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = getPlayersWithItem;
            command.Parameters.AddWithValue("ItemName", comboItemNameToSearch.SelectedValue);
            da.SelectCommand = command;
            DataTable dt = new DataTable();

            connection.Open();
            da.Fill(dt);
            connection.Close();

            List<string> listPlayersWithItem = new List<string>();

            foreach (DataRow playerName in dt.Rows)
            {
                string player = playerName["PlayerName"].ToString();
                //labelHasOnyBag.Text = labelHasOnyBag.Text + itemName + ", ";
                listPlayersWithItem.Add(player);
            }

            labelPlayersWithItem.Visible = true;
            string[] arrayPlayersWithItem = listPlayersWithItem.ToArray();
            string allPlayersWithOnyBag = string.Join(", ", arrayPlayersWithItem.Where(s => !string.IsNullOrEmpty(s)));
            if (arrayPlayersWithItem.Length == 0)
            {
                labelPlayersWithItem.Text = "No players have this item";
            }
            else
            {
                labelPlayersWithItem.Text = allPlayersWithOnyBag;
            }
        }
    }
}