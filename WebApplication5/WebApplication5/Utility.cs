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
    public class Utility
    {
        public static void InsertPlayerlootQuery(string playerName, string itemName, string spec, string dateOfRaid, bool isSidegrade)
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
            double itemValueSidegrade = 0;
            if (reader.Read())
            {
                itemValue = Convert.ToDouble(reader["ItemValue"]);
                reader.Close();
            }

            itemValueSidegrade = itemValue * 0.25;
            if (!spec.Equals("Offspec"))
            {
                if (spec.Equals("Mainspec"))
                {
                    /* Update Mainspec Player LootScore */
                    if (isSidegrade)
                    {
                        string updatePlayerLootScore = "UPDATE Roster SET LootScore = LootScore + " + itemValueSidegrade + " WHERE PlayerName = '" + playerName + "'";
                        SqlCommand commandUpdatePlayerLootScore = new SqlCommand(updatePlayerLootScore, connection);
                        commandUpdatePlayerLootScore.ExecuteNonQuery();
                    }
                    else
                    {
                        string updatePlayerLootScore = "UPDATE Roster SET LootScore = LootScore + " + itemValue + " WHERE PlayerName = '" + playerName + "'";
                        SqlCommand commandUpdatePlayerLootScore = new SqlCommand(updatePlayerLootScore, connection);
                        commandUpdatePlayerLootScore.ExecuteNonQuery();
                    }
                    

                }
                else
                {
                    /* Update Pvp/Offspec Player LootScore */
                    if (isSidegrade)
                    {
                        string updatePlayerLootScore = "UPDATE Roster SET PvpLootScore = PvpLootScore + " + itemValueSidegrade + " WHERE PlayerName = '" + playerName + "'";
                        SqlCommand commandUpdatePlayerLootScore = new SqlCommand(updatePlayerLootScore, connection);
                        commandUpdatePlayerLootScore.ExecuteNonQuery();
                    }
                    else
                    {
                        string updatePlayerLootScore = "UPDATE Roster SET PvpLootScore = PvpLootScore + " + itemValue + " WHERE PlayerName = '" + playerName + "'";
                        SqlCommand commandUpdatePlayerLootScore = new SqlCommand(updatePlayerLootScore, connection);
                        commandUpdatePlayerLootScore.ExecuteNonQuery();
                    }

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

            // string dateOfRaid = calendarAQ40.SelectedDate.ToString("yyyy-MM-dd");

            command.Parameters.AddWithValue("@PlayerName", playerName);
            command.Parameters.AddWithValue("@ItemName", itemName);
            command.Parameters.AddWithValue("@ItemValue", isSidegrade ? itemValueSidegrade : itemValue);
            command.Parameters.AddWithValue("@Spec", spec);
            command.Parameters.AddWithValue("@RaidName", raidName);
            command.Parameters.AddWithValue("@DateOfRaid", dateOfRaid);

            command.ExecuteNonQuery();

            connection.Close();
        }
    }
}