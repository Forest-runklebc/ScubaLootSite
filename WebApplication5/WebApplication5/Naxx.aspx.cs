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
    public partial class Naxx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }

            if (!IsPostBack)
            {
                calendarNaxx.SelectedDate = DateTime.Today;
            }
        }

        protected void WriteToDatabase_Click(object sender, EventArgs e)
        {
            InsertPlayerlootQuery(comboAnubPlayer1.SelectedValue, comboAnubLoot1.SelectedValue, radioAnub1.SelectedValue);
            InsertPlayerlootQuery(comboAnubPlayer2.SelectedValue, comboAnubLoot2.SelectedValue, radioAnub2.SelectedValue);
            InsertPlayerlootQuery(comboAnubPlayer3.SelectedValue, comboAnubLoot3.SelectedValue, radioAnub3.SelectedValue);

            InsertPlayerlootQuery(comboFaerlinaPlayer1.SelectedValue, comboFaerlinaLoot1.SelectedValue, radioFaerlina1.SelectedValue);
            InsertPlayerlootQuery(comboFaerlinaPlayer2.SelectedValue, comboFaerlinaLoot2.SelectedValue, radioFaerlina2.SelectedValue);
            InsertPlayerlootQuery(comboFaerlinaPlayer3.SelectedValue, comboFaerlinaLoot3.SelectedValue, radioFaerlina3.SelectedValue);

            InsertPlayerlootQuery(comboMaexxnaPlayer1.SelectedValue, comboMaexxnaLoot1.SelectedValue, radioMaexxna1.SelectedValue);
            InsertPlayerlootQuery(comboMaexxnaPlayer2.SelectedValue, comboMaexxnaLoot2.SelectedValue, radioMaexxna2.SelectedValue);
            InsertPlayerlootQuery(comboMaexxnaPlayer3.SelectedValue, comboMaexxnaLoot3.SelectedValue, radioMaexxna3.SelectedValue);
            InsertPlayerlootQuery(comboMaexxnaPlayer4.SelectedValue, comboMaexxnaLoot4.SelectedValue, radioMaexxna4.SelectedValue);

            InsertPlayerlootQuery(comboNothPlayer1.SelectedValue, comboNothLoot1.SelectedValue, radioNoth1.SelectedValue);
            InsertPlayerlootQuery(comboNothPlayer2.SelectedValue, comboNothLoot2.SelectedValue, radioNoth2.SelectedValue);
            InsertPlayerlootQuery(comboNothPlayer3.SelectedValue, comboNothLoot3.SelectedValue, radioNoth3.SelectedValue);

            InsertPlayerlootQuery(comboHeiganPlayer1.SelectedValue, comboHeiganLoot1.SelectedValue, radioHeigan1.SelectedValue);
            InsertPlayerlootQuery(comboHeiganPlayer2.SelectedValue, comboHeiganLoot2.SelectedValue, radioHeigan2.SelectedValue);
            InsertPlayerlootQuery(comboHeiganPlayer3.SelectedValue, comboHeiganLoot3.SelectedValue, radioHeigan3.SelectedValue);

            InsertPlayerlootQuery(comboLoathebPlayer1.SelectedValue, comboLoathebLoot1.SelectedValue, radioLoatheb1.SelectedValue);
            InsertPlayerlootQuery(comboLoathebPlayer2.SelectedValue, comboLoathebLoot2.SelectedValue, radioLoatheb2.SelectedValue);
            InsertPlayerlootQuery(comboLoathebPlayer3.SelectedValue, comboLoathebLoot3.SelectedValue, radioLoatheb3.SelectedValue);
            InsertPlayerlootQuery(comboLoathebPlayer4.SelectedValue, comboLoathebLoot4.SelectedValue, radioLoatheb4.SelectedValue);

            InsertPlayerlootQuery(comboPatchwerkPlayer1.SelectedValue, comboPatchwerkLoot1.SelectedValue, radioPatchwerk1.SelectedValue);
            InsertPlayerlootQuery(comboPatchwerkPlayer2.SelectedValue, comboPatchwerkLoot2.SelectedValue, radioPatchwerk2.SelectedValue);
            InsertPlayerlootQuery(comboPatchwerkPlayer3.SelectedValue, comboPatchwerkLoot3.SelectedValue, radioPatchwerk3.SelectedValue);


            InsertPlayerlootQuery(comboGrobbulusPlayer1.SelectedValue, comboGrobbulusLoot1.SelectedValue, radioGrobbulus1.SelectedValue);
            InsertPlayerlootQuery(comboGrobbulusPlayer2.SelectedValue, comboGrobbulusLoot2.SelectedValue, radioGrobbulus2.SelectedValue);
            InsertPlayerlootQuery(comboGrobbulusPlayer3.SelectedValue, comboGrobbulusLoot3.SelectedValue, radioGrobbulus3.SelectedValue);

            InsertPlayerlootQuery(comboGluthPlayer1.SelectedValue, comboGluthLoot1.SelectedValue, radioGluth1.SelectedValue);
            InsertPlayerlootQuery(comboGluthPlayer2.SelectedValue, comboGluthLoot2.SelectedValue, radioGluth2.SelectedValue);
            InsertPlayerlootQuery(comboGluthPlayer3.SelectedValue, comboGluthLoot3.SelectedValue, radioGluth3.SelectedValue);

            InsertPlayerlootQuery(comboThaddiusPlayer1.SelectedValue, comboThaddiusLoot1.SelectedValue, radioThaddius1.SelectedValue);
            InsertPlayerlootQuery(comboThaddiusPlayer2.SelectedValue, comboThaddiusLoot2.SelectedValue, radioThaddius2.SelectedValue);
            InsertPlayerlootQuery(comboThaddiusPlayer3.SelectedValue, comboThaddiusLoot3.SelectedValue, radioThaddius3.SelectedValue);
            InsertPlayerlootQuery(comboThaddiusPlayer4.SelectedValue, comboThaddiusLoot4.SelectedValue, radioThaddius4.SelectedValue);

            InsertPlayerlootQuery(comboRazuviousPlayer1.SelectedValue, comboRazuviousLoot1.SelectedValue, radioRazuvious1.SelectedValue);
            InsertPlayerlootQuery(comboRazuviousPlayer2.SelectedValue, comboRazuviousLoot2.SelectedValue, radioRazuvious2.SelectedValue);
            InsertPlayerlootQuery(comboRazuviousPlayer3.SelectedValue, comboRazuviousLoot3.SelectedValue, radioRazuvious3.SelectedValue);

            InsertPlayerlootQuery(comboGothikPlayer1.SelectedValue, comboGothikLoot1.SelectedValue, radioGothik1.SelectedValue);
            InsertPlayerlootQuery(comboGothikPlayer2.SelectedValue, comboGothikLoot2.SelectedValue, radioGothik2.SelectedValue);
            InsertPlayerlootQuery(comboGothikPlayer3.SelectedValue, comboGothikLoot3.SelectedValue, radioGothik3.SelectedValue);

            InsertPlayerlootQuery(comboHorsePlayer1.SelectedValue, comboHorseLoot1.SelectedValue, radioHorse1.SelectedValue);
            InsertPlayerlootQuery(comboHorsePlayer2.SelectedValue, comboHorseLoot2.SelectedValue, radioHorse2.SelectedValue);
            InsertPlayerlootQuery(comboHorsePlayer3.SelectedValue, comboHorseLoot3.SelectedValue, radioHorse3.SelectedValue);
            InsertPlayerlootQuery(comboHorsePlayer4.SelectedValue, comboHorseLoot4.SelectedValue, radioHorse4.SelectedValue);

            InsertPlayerlootQuery(comboSapphironPlayer1.SelectedValue, comboSapphironLoot1.SelectedValue, radioSapphiron1.SelectedValue);
            InsertPlayerlootQuery(comboSapphironPlayer2.SelectedValue, comboSapphironLoot2.SelectedValue, radioSapphiron2.SelectedValue);
            InsertPlayerlootQuery(comboSapphironPlayer3.SelectedValue, comboSapphironLoot3.SelectedValue, radioSapphiron3.SelectedValue);
            InsertPlayerlootQuery(comboSapphironPlayer4.SelectedValue, comboSapphironLoot4.SelectedValue, radioSapphiron4.SelectedValue);
            InsertPlayerlootQuery(comboSapphironPlayer5.SelectedValue, comboSapphironLoot5.SelectedValue, radioSapphiron5.SelectedValue);

            InsertPlayerlootQuery(comboKelThuzadPlayer1.SelectedValue, comboKelThuzadLoot1.SelectedValue, radioKelThuzad1.SelectedValue);
            InsertPlayerlootQuery(comboKelThuzadPlayer2.SelectedValue, comboKelThuzadLoot2.SelectedValue, radioKelThuzad2.SelectedValue);
            InsertPlayerlootQuery(comboKelThuzadPlayer3.SelectedValue, comboKelThuzadLoot3.SelectedValue, radioKelThuzad3.SelectedValue);
            InsertPlayerlootQuery(comboKelThuzadPlayer4.SelectedValue, comboKelThuzadLoot4.SelectedValue, radioKelThuzad4.SelectedValue);
            InsertPlayerlootQuery(comboKelThuzadPlayer5.SelectedValue, comboKelThuzadLoot5.SelectedValue, radioKelThuzad5.SelectedValue);

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

            string dateOfRaid = calendarNaxx.SelectedDate.ToString("yyyy-MM-dd");

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