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
    public partial class ZulGurub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            calendarZG.SelectedDate = DateTime.Today;
        }

        public void submitZGInfo(string playerName, string idolRecieved)
        {
            string updatePlayerZG = string.Empty;
            if(idolRecieved.Equals(""))
            {
                updatePlayerZG = "UPDATE ZulGurub SET NumAttended = NumAttended + 1 WHERE PlayerName = '" + playerName + "'";
            }
            else
            {
                updatePlayerZG = "UPDATE ZulGurub SET NumAttended = NumAttended + 1,  NumIdols = NumIdols + 1 WHERE PlayerName = '" + playerName + "'";
            }
            
            string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand command = connection.CreateCommand();
            connection.Open();
            SqlCommand commandUpdatePlayerZG = new SqlCommand(updatePlayerZG, connection);
            commandUpdatePlayerZG.ExecuteNonQuery();
            connection.Close();
        }

        protected void buttonSubmitZG_Click(object sender, EventArgs e)
        {
            submitZGInfo(comboPlayer1.SelectedValue, CheckBoxList1.SelectedValue);
            submitZGInfo(comboPlayer2.SelectedValue, CheckBoxList2.SelectedValue);
            submitZGInfo(comboPlayer3.SelectedValue, CheckBoxList3.SelectedValue);
            submitZGInfo(comboPlayer4.SelectedValue, CheckBoxList4.SelectedValue);
            submitZGInfo(comboPlayer5.SelectedValue, CheckBoxList5.SelectedValue);
            submitZGInfo(comboPlayer6.SelectedValue, CheckBoxList6.SelectedValue);
            submitZGInfo(comboPlayer7.SelectedValue, CheckBoxList7.SelectedValue);
            submitZGInfo(comboPlayer8.SelectedValue, CheckBoxList8.SelectedValue);
            submitZGInfo(comboPlayer9.SelectedValue, CheckBoxList9.SelectedValue);
            submitZGInfo(comboPlayer10.SelectedValue, CheckBoxList10.SelectedValue);
            submitZGInfo(comboPlayer11.SelectedValue, CheckBoxList11.SelectedValue);
            submitZGInfo(comboPlayer12.SelectedValue, CheckBoxList12.SelectedValue);
            submitZGInfo(comboPlayer13.SelectedValue, CheckBoxList13.SelectedValue);
            submitZGInfo(comboPlayer14.SelectedValue, CheckBoxList14.SelectedValue);
            submitZGInfo(comboPlayer15.SelectedValue, CheckBoxList15.SelectedValue);
            submitZGInfo(comboPlayer16.SelectedValue, CheckBoxList16.SelectedValue);
            submitZGInfo(comboPlayer17.SelectedValue, CheckBoxList17.SelectedValue);
            submitZGInfo(comboPlayer18.SelectedValue, CheckBoxList18.SelectedValue);
            submitZGInfo(comboPlayer19.SelectedValue, CheckBoxList19.SelectedValue);
            submitZGInfo(comboPlayer20.SelectedValue, CheckBoxList20.SelectedValue);
        }

        protected void buttonZGInfo_Click(object sender, EventArgs e)
        {
            string getZGInfoQuery = "select PlayerName, NumAttended, NumIdols from ZulGurub where PlayerName = @PlayerName";

            string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = getZGInfoQuery;
            command.Parameters.AddWithValue("PlayerName", comboInfoPlayer.SelectedValue);
            da.SelectCommand = command;
            DataTable dt = new DataTable();

            connection.Open();
            da.Fill(dt);
            connection.Close();

            foreach (DataRow zgInfo in dt.Rows)
            {
                string player = zgInfo["PlayerName"].ToString();
                string numAttended = zgInfo["NumAttended"].ToString();
                string numIdols = zgInfo["NumIdols"].ToString();

                labelPlayerInfo.InnerText = player + " - ZGs Attended: " + numAttended + " - Number of Idols: " + numIdols;
            }

            labelPlayerInfo.Visible = true;

            
        }

        //public void generatePlayerListAndCheckBoxes()
        //{
        //    string getRosterQuery = "select PlayerName from Roster where IsActive = 1 and PlayerName <> 'DE' order by PlayerName";

        //    string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
        //    SqlConnection connection = new SqlConnection(connectionString);

        //    SqlDataAdapter da = new SqlDataAdapter();
        //    SqlCommand command = connection.CreateCommand();
        //    command.CommandText = getRosterQuery;
        //    da.SelectCommand = command;
        //    DataTable dt = new DataTable();

        //    connection.Open();
        //    da.Fill(dt);
        //    connection.Close();

        //    foreach (DataRow playerName in dt.Rows)
        //    {
        //        string player = playerName["PlayerName"].ToString();
        //        //labelHasOnyBag.Text = labelHasOnyBag.Text + itemName + ", ";

        //        Label dynamicLabel = new Label();
        //        dynamicLabel.Text = player;
        //        dynamicLabel.ID = "label" + player;

        //        CheckBoxList dynamicCheckBoxList = new CheckBoxList();
        //        dynamicCheckBoxList.RepeatDirection = System.Web.UI.WebControls.RepeatDirection.Horizontal;
        //        dynamicCheckBoxList.Items.Add(new ListItem("Attended"));
        //        dynamicCheckBoxList.Items.Add(new ListItem("Recieved Idol"));
        //        dynamicCheckBoxList.ID = "checkBoxList" + player;

        //        Literal dynamicLiteral = new Literal();
        //        dynamicLiteral.Text = "</br>";

        //        divPlayerList.Controls.Add(dynamicLabel);
        //        divPlayerList.Controls.Add(dynamicCheckBoxList);
        //        divPlayerList.Controls.Add(dynamicLiteral);
        //    }
        //}


    }
}