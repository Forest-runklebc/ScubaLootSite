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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }

            if (!IsPostBack)
            {
                calendarMC.SelectedDate = DateTime.Today;
            }
        }

        protected void WriteToDatabase_Click(object sender, EventArgs e)
        {
            InsertPlayerlootQuery(comboLucifronPlayer1.SelectedValue, comboLucifronLoot1.SelectedValue, radioLucifron1.SelectedValue);
            InsertPlayerlootQuery(comboLucifronPlayer2.SelectedValue, comboLucifronLoot2.SelectedValue, radioLucifron2.SelectedValue);


            InsertPlayerlootQuery(comboMagmadarPlayer1.SelectedValue, comboMagmadarLoot1.SelectedValue, radioMagmadar1.SelectedValue);
            InsertPlayerlootQuery(comboMagmadarPlayer2.SelectedValue, comboMagmadarLoot2.SelectedValue, radioMagmadar2.SelectedValue);
            InsertPlayerlootQuery(comboMagmadarPlayer3.SelectedValue, comboMagmadarLoot3.SelectedValue, radioMagmadar3.SelectedValue);

            InsertPlayerlootQuery(comboGehennasPlayer1.SelectedValue, comboGehennasLoot1.SelectedValue, radioGehennas1.SelectedValue);
            InsertPlayerlootQuery(comboGehennasPlayer2.SelectedValue, comboGehennasLoot2.SelectedValue, radioGehennas2.SelectedValue);

            InsertPlayerlootQuery(comboGarrPlayer1.SelectedValue, comboGarrLoot1.SelectedValue, radioGarr1.SelectedValue);
            InsertPlayerlootQuery(comboGarrPlayer2.SelectedValue, comboGarrLoot2.SelectedValue, radioGarr2.SelectedValue);
            InsertPlayerlootQuery(comboGarrPlayer3.SelectedValue, comboGarrLoot3.SelectedValue, radioGarr3.SelectedValue);
            InsertPlayerlootQuery(comboGarrPlayer4.SelectedValue, comboGarrLoot4.SelectedValue, radioGarr4.SelectedValue);

            InsertPlayerlootQuery(comboBaronPlayer1.SelectedValue, comboBaronLoot1.SelectedValue, radioBaron1.SelectedValue);
            InsertPlayerlootQuery(comboBaronPlayer2.SelectedValue, comboBaronLoot2.SelectedValue, radioBaron2.SelectedValue);
            InsertPlayerlootQuery(comboBaronPlayer3.SelectedValue, comboBaronLoot3.SelectedValue, radioBaron3.SelectedValue);

            InsertPlayerlootQuery(comboShazzrahPlayer1.SelectedValue, comboShazzrahLoot1.SelectedValue, radioShazzrah1.SelectedValue);
            InsertPlayerlootQuery(comboShazzrahPlayer2.SelectedValue, comboShazzrahLoot2.SelectedValue, radioShazzrah2.SelectedValue);

            InsertPlayerlootQuery(comboSulfuronPlayer1.SelectedValue, comboSulfuronLoot1.SelectedValue, radioSulfuron1.SelectedValue);
            InsertPlayerlootQuery(comboSulfuronPlayer2.SelectedValue, comboSulfuronLoot2.SelectedValue, radioSulfuron2.SelectedValue);

            InsertPlayerlootQuery(comboGolemaggPlayer1.SelectedValue, comboGolemaggLoot1.SelectedValue, radioGolemagg1.SelectedValue);
            InsertPlayerlootQuery(comboGolemaggPlayer2.SelectedValue, comboGolemaggLoot2.SelectedValue, radioGolemagg2.SelectedValue);
            InsertPlayerlootQuery(comboGolemaggPlayer3.SelectedValue, comboGolemaggLoot3.SelectedValue, radioGolemagg3.SelectedValue);

            InsertPlayerlootQuery(comboMajordomoPlayer1.SelectedValue, comboMajordomoLoot1.SelectedValue, radioMajordomo1.SelectedValue);
            InsertPlayerlootQuery(comboMajordomoPlayer2.SelectedValue, comboMajordomoLoot2.SelectedValue, radioMajordomo2.SelectedValue);
            InsertPlayerlootQuery(comboMajordomoPlayer3.SelectedValue, comboMajordomoLoot3.SelectedValue, radioMajordomo3.SelectedValue);

            InsertPlayerlootQuery(comboRagnarosPlayer1.SelectedValue, comboRagnarosLoot1.SelectedValue, radioRagnaros1.SelectedValue);
            InsertPlayerlootQuery(comboRagnarosPlayer2.SelectedValue, comboRagnarosLoot2.SelectedValue, radioRagnaros2.SelectedValue);
            InsertPlayerlootQuery(comboRagnarosPlayer3.SelectedValue, comboRagnarosLoot3.SelectedValue, radioRagnaros3.SelectedValue);
            InsertPlayerlootQuery(comboRagnarosPlayer4.SelectedValue, comboRagnarosLoot4.SelectedValue, radioRagnaros4.SelectedValue);
            InsertPlayerlootQuery(comboRagnarosPlayer5.SelectedValue, comboRagnarosLoot5.SelectedValue, radioRagnaros5.SelectedValue);

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

            string dateOfRaid = calendarMC.SelectedDate.ToString("yyyy-MM-dd");

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