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
    public partial class BlackwingLair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }

            if (!IsPostBack)
            {
                calendarBWL.SelectedDate = DateTime.Today;
            }
        }


        protected void WriteToDatabase_Click(object sender, EventArgs e)
        {
            InsertPlayerlootQuery(comboRazorgorePlayer1.SelectedValue, comboRazorgoreLoot1.SelectedValue, radioRazorgore1.SelectedValue);
            InsertPlayerlootQuery(comboRazorgorePlayer2.SelectedValue, comboRazorgoreLoot2.SelectedValue, radioRazorgore2.SelectedValue);
            InsertPlayerlootQuery(comboRazorgorePlayer3.SelectedValue, comboRazorgoreLoot3.SelectedValue, radioRazorgore3.SelectedValue);


            InsertPlayerlootQuery(comboVaelPlayer1.SelectedValue, comboVaelLoot1.SelectedValue, radioVael1.SelectedValue);
            InsertPlayerlootQuery(comboVaelPlayer2.SelectedValue, comboVaelLoot2.SelectedValue, radioVael2.SelectedValue);
            InsertPlayerlootQuery(comboVaelPlayer3.SelectedValue, comboVaelLoot3.SelectedValue, radioVael3.SelectedValue);

            InsertPlayerlootQuery(comboBroodlordPlayer1.SelectedValue, comboBroodlordLoot1.SelectedValue, radioBroodlord1.SelectedValue);
            InsertPlayerlootQuery(comboBroodlordPlayer2.SelectedValue, comboBroodlordLoot2.SelectedValue, radioBroodlord2.SelectedValue);
            InsertPlayerlootQuery(comboBroodlordPlayer3.SelectedValue, comboBroodlordLoot3.SelectedValue, radioBroodlord3.SelectedValue);

            InsertPlayerlootQuery(comboFiremawPlayer1.SelectedValue, comboFiremawLoot1.SelectedValue, radioFiremaw1.SelectedValue);
            InsertPlayerlootQuery(comboFiremawPlayer2.SelectedValue, comboFiremawLoot2.SelectedValue, radioFiremaw2.SelectedValue);


            InsertPlayerlootQuery(comboEbonrocPlayer1.SelectedValue, comboEbonrocLoot1.SelectedValue, radioEbonroc1.SelectedValue);
            InsertPlayerlootQuery(comboEbonrocPlayer2.SelectedValue, comboEbonrocLoot2.SelectedValue, radioEbonroc2.SelectedValue);

            InsertPlayerlootQuery(comboFlamegorePlayer1.SelectedValue, comboFlamegoreLoot1.SelectedValue, radioFlamegore1.SelectedValue);
            InsertPlayerlootQuery(comboFlamegorePlayer2.SelectedValue, comboFlamegoreLoot2.SelectedValue, radioFlamegore2.SelectedValue);

            InsertPlayerlootQuery(comboChromagPlayer1.SelectedValue, comboChromagLoot1.SelectedValue, radioChromag1.SelectedValue);
            InsertPlayerlootQuery(comboChromagPlayer2.SelectedValue, comboChromagLoot2.SelectedValue, radioChromag2.SelectedValue);
            InsertPlayerlootQuery(comboChromagPlayer3.SelectedValue, comboChromagLoot3.SelectedValue, radioChromag3.SelectedValue);
            InsertPlayerlootQuery(comboChromagPlayer4.SelectedValue, comboChromagLoot4.SelectedValue, radioChromag4.SelectedValue);

            InsertPlayerlootQuery(comboNefPlayer1.SelectedValue, comboNefLoot1.SelectedValue, radioNef1.SelectedValue);
            InsertPlayerlootQuery(comboNefPlayer2.SelectedValue, comboNefLoot2.SelectedValue, radioNef2.SelectedValue);
            InsertPlayerlootQuery(comboNefPlayer3.SelectedValue, comboNefLoot3.SelectedValue, radioNef3.SelectedValue);
            InsertPlayerlootQuery(comboNefPlayer4.SelectedValue, comboNefLoot4.SelectedValue, radioNef4.SelectedValue);
            InsertPlayerlootQuery(comboNefPlayer5.SelectedValue, comboNefLoot5.SelectedValue, radioNef5.SelectedValue);

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

            string dateOfRaid = calendarBWL.SelectedDate.ToString("yyyy-MM-dd");

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