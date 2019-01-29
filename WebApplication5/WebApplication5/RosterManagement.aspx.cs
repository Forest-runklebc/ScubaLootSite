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

namespace WebApplication5
{
    public partial class RosterManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void buttonAddNewPlayers_Click(object sender, EventArgs e)
        {
            insertNewPlayerToRoster(comboNewPlayer1.SelectedValue, comboNewPlayerRank1.SelectedValue, comboNewPlayerClass1.SelectedValue, comboNewPlayerSubClass1.SelectedValue, radioNewActive1.SelectedValue);
            insertNewPlayerToRoster(comboNewPlayer2.SelectedValue, comboNewPlayerRank2.SelectedValue, comboNewPlayerClass2.SelectedValue, comboNewPlayerSubClass2.SelectedValue, radioNewActive2.SelectedValue);
            insertNewPlayerToRoster(comboNewPlayer3.SelectedValue, comboNewPlayerRank3.SelectedValue, comboNewPlayerClass3.SelectedValue, comboNewPlayerSubClass3.SelectedValue, radioNewActive3.SelectedValue);
        }

        public void insertNewPlayerToRoster(string player, string rank, string className, string subClass, string isActive)
        {
            if (!player.Equals(string.Empty) || !rank.Equals(string.Empty) ||  !className.Equals(string.Empty))
            {
                string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();

                string checkPlayerAlreadyExists = "Select PlayerName from Roster where PlayerName = @PlayerName";

                SqlDataAdapter da = new SqlDataAdapter();
                SqlCommand commandCheckPlayerAlreadyExists = connection.CreateCommand();
                commandCheckPlayerAlreadyExists.CommandText = checkPlayerAlreadyExists;
                commandCheckPlayerAlreadyExists.Parameters.AddWithValue("PlayerName", player);
                da.SelectCommand = commandCheckPlayerAlreadyExists;
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    string insertPlayerIntoRoster = "INSERT INTO Roster (PlayerName, PlayerRank, PlayerClass, SubClass, JoinDate) " +
                                                        "Values (@PlayerName, @PlayerRank, @PlayerClass, @SubClass, @JoinDate)";

                    string insertPlayerIntoZG = "INSERT INTO ZulGurub (PlayerName) Values (@PlayerName)";



                    SqlCommand commandInsertRoster = new SqlCommand(insertPlayerIntoRoster, connection);
                    commandInsertRoster.Parameters.AddWithValue("PlayerName", player);
                    commandInsertRoster.Parameters.AddWithValue("PlayerRank", rank);
                    commandInsertRoster.Parameters.AddWithValue("PlayerClass", className);
                    commandInsertRoster.Parameters.AddWithValue("SubClass", subClass);
                    if (isActive.Equals("Active"))
                    {
                        commandInsertRoster.Parameters.AddWithValue("IsActive", "1");
                    }
                    else
                    {
                        commandInsertRoster.Parameters.AddWithValue("IsActive", "0");
                    }
                    commandInsertRoster.Parameters.AddWithValue("JoinDate", System.DateTime.Today.ToString("yyyy-MM-dd"));
                    commandInsertRoster.ExecuteNonQuery();

                    SqlCommand commandInsertZG = new SqlCommand(insertPlayerIntoZG, connection);
                    commandInsertZG.Parameters.AddWithValue("PlayerName", player);
                    commandInsertZG.ExecuteNonQuery();

                }
                connection.Close();
            }
        }

        protected void buttonUpdateExistingPlayers_Click(object sender, EventArgs e)
        {
            updateExistingPlayer(comboUpdatePlayer1.SelectedValue, comboUpdateRanks1.SelectedValue, comboUpdateClass1.SelectedValue, comboUpdateSubClass1.SelectedValue, radioUpdateActive1.SelectedValue);
            updateExistingPlayer(comboUpdatePlayer2.SelectedValue, comboUpdateRanks2.SelectedValue, comboUpdateClass2.SelectedValue, comboUpdateSubClass2.SelectedValue, radioUpdateActive2.SelectedValue);
            updateExistingPlayer(comboUpdatePlayer3.SelectedValue, comboUpdateRanks3.SelectedValue, comboUpdateClass3.SelectedValue, comboUpdateSubClass3.SelectedValue, radioUpdateActive3.SelectedValue);
        }

        public void updateExistingPlayer(string player, string rank, string className, string subClass, string isActive)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            string getExistingPlayerInfo = "SELECT PlayerRank, PlayerClass, SubClass, IsActive from Roster where PlayerName = @PlayerName";
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand commandGetExistingPlayerInfo = connection.CreateCommand();
            commandGetExistingPlayerInfo.CommandText = getExistingPlayerInfo;
            commandGetExistingPlayerInfo.Parameters.AddWithValue("PlayerName", player);
            da.SelectCommand = commandGetExistingPlayerInfo;
            DataTable dt = new DataTable();
            connection.Open();
            da.Fill(dt);

            string existingRank = string.Empty;
            string existingClass = string.Empty;
            string existingSubClass = string.Empty;
            string existingIsActive = string.Empty;

            foreach (DataRow row in dt.Rows)
            {
                existingRank = row["PlayerRank"].ToString();
                existingClass = row["PlayerClass"].ToString();
                existingSubClass = row["SubClass"].ToString();
            }

            // Make sure we don't overwrite values that are the same in the DB and screen
            rank = existingRank.Equals(rank) ? existingRank : rank;
            className = existingClass.Equals(className) ?  existingClass : className;
            subClass = existingSubClass.Equals(subClass) ? subClass : existingSubClass;
            if (!className.Equals("Warrior") || !className.Equals("Priest"))
            {
                subClass = string.Empty;
            }
            isActive = isActive.Equals("Active") ? "True" : "False";

            string updateExistingPlayer = "UPDATE Roster SET PlayerRank = @PlayerRank, PlayerClass = @PlayerClass, SubClass = @SubClass, IsActive = @IsActive WHERE PlayerName = @PlayerName";
            SqlCommand commandUpdateExistingPlayer = new SqlCommand(updateExistingPlayer, connection);
            commandUpdateExistingPlayer.Parameters.AddWithValue("PlayerRank", rank);
            commandUpdateExistingPlayer.Parameters.AddWithValue("PlayerClass", className);
            commandUpdateExistingPlayer.Parameters.AddWithValue("SubClass", subClass);
            commandUpdateExistingPlayer.Parameters.AddWithValue("IsActive", isActive);
            commandUpdateExistingPlayer.Parameters.AddWithValue("PlayerName", player);

            commandUpdateExistingPlayer.ExecuteNonQuery();

            connection.Close();
        }
    }
}