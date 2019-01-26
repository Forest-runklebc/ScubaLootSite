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

/* 
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
	                                RecentAttendance.PlayerName, 
	                                (select LootScore from Roster where PlayerName = @PlayerName) as ForeverLootScore, 
	                                (select sum(AttendanceValue) from Attendance where PlayerName = @PlayerName) as ForeverAttendanceValue,
	                                SUM(RecentAttendance.AttendanceValue) as RecentAttendanceValue,
	                                --count (RaidDate) as totalRecentRaids,
	                                Cast(CONVERT(Decimal(10,2),(SUM(RecentAttendance.AttendanceValue) * 100.0 / count(RecentAttendance.RaidDate))) as decimal(10,2)) 
		                                as RecentPercentageAttendance,
                                    (select PvpLootScore from Roster where PlayerName = 'Forest') as PvpLootScore
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
    }
}