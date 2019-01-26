using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class AQ40 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }

            if(!IsPostBack)
            {
                calendarAQ40.SelectedDate = DateTime.Today;
            }
        }

        protected void WriteToDatabase_Click(object sender, EventArgs e)
        {
            InsertPlayerlootQuery(comboSkeramPlayer1.SelectedValue, comboSkeramLoot1.SelectedValue, radioSkeram1.SelectedValue);
            InsertPlayerlootQuery(comboSkeramPlayer2.SelectedValue, comboSkeramLoot2.SelectedValue, radioSkeram2.SelectedValue);
            InsertPlayerlootQuery(comboSkeramPlayer3.SelectedValue, comboSkeramLoot3.SelectedValue, radioSkeram3.SelectedValue);

            InsertPlayerlootQuery(comboBugTrioPlayer1.SelectedValue, comboBugTrioLoot1.SelectedValue, radioBugTrio1.SelectedValue);
            InsertPlayerlootQuery(comboBugTrioPlayer2.SelectedValue, comboBugTrioLoot2.SelectedValue, radioBugTrio2.SelectedValue);
            InsertPlayerlootQuery(comboBugTrioPlayer3.SelectedValue, comboBugTrioLoot3.SelectedValue, radioBugTrio3.SelectedValue);

            InsertPlayerlootQuery(comboSarturaPlayer1.SelectedValue, comboSarturaLoot1.SelectedValue, radioSartura1.SelectedValue);
            InsertPlayerlootQuery(comboSarturaPlayer2.SelectedValue, comboSarturaLoot2.SelectedValue, radioSartura2.SelectedValue);
            InsertPlayerlootQuery(comboSarturaPlayer3.SelectedValue, comboSarturaLoot3.SelectedValue, radioSartura3.SelectedValue);

            InsertPlayerlootQuery(comboFankrissPlayer1.SelectedValue, comboFankrissLoot1.SelectedValue, radioFankriss1.SelectedValue);
            InsertPlayerlootQuery(comboFankrissPlayer2.SelectedValue, comboFankrissLoot2.SelectedValue, radioFankriss2.SelectedValue);
            InsertPlayerlootQuery(comboFankrissPlayer3.SelectedValue, comboFankrissLoot3.SelectedValue, radioFankriss3.SelectedValue);

            InsertPlayerlootQuery(comboViscPlayer1.SelectedValue, comboViscLoot1.SelectedValue, radioVisc1.SelectedValue);
            InsertPlayerlootQuery(comboViscPlayer2.SelectedValue, comboViscLoot2.SelectedValue, radioVisc2.SelectedValue);
            InsertPlayerlootQuery(comboViscPlayer3.SelectedValue, comboViscLoot3.SelectedValue, radioVisc3.SelectedValue);
            InsertPlayerlootQuery(comboViscPlayer4.SelectedValue, comboViscLoot4.SelectedValue, radioVisc4.SelectedValue);

            InsertPlayerlootQuery(comboHuhuPlayer1.SelectedValue, comboHuhuLoot1.SelectedValue, radioHuhu1.SelectedValue);
            InsertPlayerlootQuery(comboHuhuPlayer2.SelectedValue, comboHuhuLoot2.SelectedValue, radioHuhu2.SelectedValue);
            InsertPlayerlootQuery(comboHuhuPlayer3.SelectedValue, comboHuhuLoot3.SelectedValue, radioHuhu3.SelectedValue);
            InsertPlayerlootQuery(comboHuhuPlayer4.SelectedValue, comboHuhuLoot4.SelectedValue, radioHuhu4.SelectedValue);

            InsertPlayerlootQuery(comboTwinsPlayer1.SelectedValue, comboTwinsLoot1.SelectedValue, radioTwins1.SelectedValue);
            InsertPlayerlootQuery(comboTwinsPlayer2.SelectedValue, comboTwinsLoot2.SelectedValue, radioTwins2.SelectedValue);
            InsertPlayerlootQuery(comboTwinsPlayer3.SelectedValue, comboTwinsLoot3.SelectedValue, radioTwins3.SelectedValue);
            InsertPlayerlootQuery(comboTwinsPlayer4.SelectedValue, comboTwinsLoot4.SelectedValue, radioTwins4.SelectedValue);
            InsertPlayerlootQuery(comboTwinsPlayer5.SelectedValue, comboTwinsLoot5.SelectedValue, radioTwins5.SelectedValue);
            InsertPlayerlootQuery(comboTwinsPlayer6.SelectedValue, comboTwinsLoot6.SelectedValue, radioTwins6.SelectedValue);

            InsertPlayerlootQuery(comboOuroPlayer1.SelectedValue, comboOuroLoot1.SelectedValue, radioOuro1.SelectedValue);
            InsertPlayerlootQuery(comboOuroPlayer2.SelectedValue, comboOuroLoot2.SelectedValue, radioOuro2.SelectedValue);
            InsertPlayerlootQuery(comboOuroPlayer3.SelectedValue, comboOuroLoot3.SelectedValue, radioOuro3.SelectedValue);
            InsertPlayerlootQuery(comboOuroPlayer4.SelectedValue, comboOuroLoot4.SelectedValue, radioOuro4.SelectedValue);

            InsertPlayerlootQuery(comboCthunPlayer1.SelectedValue, comboCthunLoot1.SelectedValue, radioCthun1.SelectedValue);
            InsertPlayerlootQuery(comboCthunPlayer2.SelectedValue, comboCthunLoot2.SelectedValue, radioCthun2.SelectedValue);
            InsertPlayerlootQuery(comboCthunPlayer3.SelectedValue, comboCthunLoot3.SelectedValue, radioCthun3.SelectedValue);
            InsertPlayerlootQuery(comboCthunPlayer4.SelectedValue, comboCthunLoot4.SelectedValue, radioCthun4.SelectedValue);
            InsertPlayerlootQuery(comboCthunPlayer5.SelectedValue, comboCthunLoot5.SelectedValue, radioCthun5.SelectedValue);

            InsertPlayerlootQuery(comboTrashPlayer1.SelectedValue, comboTrashLoot1.SelectedValue, radioTrash1.SelectedValue);
            InsertPlayerlootQuery(comboTrashPlayer2.SelectedValue, comboTrashLoot2.SelectedValue, radioTrash2.SelectedValue);
            InsertPlayerlootQuery(comboTrashPlayer3.SelectedValue, comboTrashLoot3.SelectedValue, radioTrash3.SelectedValue);
            InsertPlayerlootQuery(comboTrashPlayer4.SelectedValue, comboTrashLoot4.SelectedValue, radioTrash4.SelectedValue);
            InsertPlayerlootQuery(comboTrashPlayer5.SelectedValue, comboTrashLoot5.SelectedValue, radioTrash5.SelectedValue);
            InsertPlayerlootQuery(comboTrashPlayer6.SelectedValue, comboTrashLoot6.SelectedValue, radioTrash6.SelectedValue);
            InsertPlayerlootQuery(comboTrashPlayer7.SelectedValue, comboTrashLoot7.SelectedValue, radioTrash7.SelectedValue);
            InsertPlayerlootQuery(comboTrashPlayer8.SelectedValue, comboTrashLoot8.SelectedValue, radioTrash8.SelectedValue);
            InsertPlayerlootQuery(comboTrashPlayer9.SelectedValue, comboTrashLoot9.SelectedValue, radioTrash9.SelectedValue);
            InsertPlayerlootQuery(comboTrashPlayer10.SelectedValue, comboTrashLoot10.SelectedValue, radioTrash10.SelectedValue);
        }

        public void InsertPlayerlootQuery(string playerName, string itemName, string spec)
        {
            if (playerName == null || playerName.Equals(string.Empty) || itemName == null || itemName.Equals(string.Empty))
            {
                return;
            }
            string insertPlayerLootQuery = "INSERT INTO PlayerLoot (PlayerName, ItemName, ItemValue, Spec, RaidName, DateOfRaid) " +
                                        "VALUES   (@PlayerName, @ItemName, @ItemValue, @Spec, @RaidName, @DateOfRaid)";

            string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            /* Get ItemValue */
            string itemValueQuery = "SELECT distinct ItemValue from LOOT where ItemName = '" + itemName + "'";
            SqlCommand commandGetItemValue = new SqlCommand(itemValueQuery, connection);
            SqlDataReader reader = commandGetItemValue.ExecuteReader();
            double itemValue = 0;
            if (reader.Read())
            {
                itemValue = Convert.ToDouble(reader["ItemValue"]);
                reader.Close();
            }

            if (!spec.Equals("Offspec"))
            {
                if (spec.Equals("Mainspec"))
                {
                    /* Update Mainspec Player LootScore */
                    string updatePlayerLootScore = "UPDATE Roster SET LootScore = LootScore + " + itemValue + " WHERE PlayerName = '" + playerName + "'";
                    SqlCommand commandUpdatePlayerLootScore = new SqlCommand(updatePlayerLootScore, connection);
                    commandUpdatePlayerLootScore.ExecuteNonQuery();
                }
                else
                {
                    /* Update Pvp/Offspec Player LootScore */
                    string updatePlayerLootScore = "UPDATE Roster SET PvpLootScore = PvpLootScore + " + itemValue + " WHERE PlayerName = '" + playerName + "'";
                    SqlCommand commandUpdatePlayerLootScore = new SqlCommand(updatePlayerLootScore, connection);
                    commandUpdatePlayerLootScore.ExecuteNonQuery();
                }
            }


            /* Get RaidName */
            string itemRaidName = "SELECT distinct RaidName from LOOT where ItemName = '" + itemName + "'";
            SqlCommand commandGetRaidName = new SqlCommand(itemRaidName, connection);
            reader = commandGetRaidName.ExecuteReader();
            string raidName = String.Empty;
            if (reader.Read())
            {
                raidName = reader["RaidName"].ToString();
                reader.Close();
            }

            SqlCommand command = new SqlCommand(insertPlayerLootQuery, connection);

            string dateOfRaid = calendarAQ40.SelectedDate.ToString("yyyy-MM-dd");

            command.Parameters.AddWithValue("@PlayerName", playerName);
            command.Parameters.AddWithValue("@ItemName", itemName);
            command.Parameters.AddWithValue("@ItemValue", itemValue);
            command.Parameters.AddWithValue("@Spec", spec);
            command.Parameters.AddWithValue("@RaidName", raidName);
            command.Parameters.AddWithValue("@DateOfRaid", dateOfRaid);

            command.ExecuteNonQuery();

            connection.Close();
        }
    }
}