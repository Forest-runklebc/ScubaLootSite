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

namespace WebApplication5
{
    public partial class ZulGurub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            if (!IsPostBack)
            {
                calendarZG.SelectedDate = DateTime.Today;

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

        public void createClassGrid(string playerClass, string playerSubClass, GridView GridViewName, string hexColorInfoRows, string hexColorHeaderRows, string playerGroupHeaderText)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = connection.CreateCommand();

            command.CommandType = CommandType.Text;
            if (playerClass.Equals("Warlock") && playerSubClass.Equals("Shadow"))
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
            dtInfo.Columns.Add("NumAttended");
            dtInfo.Columns.Add("NumIdols");

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
                        singlePlayerRow["NumAttended"].ToString(),
                        singlePlayerRow["NumIdols"].ToString()
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
            command.CommandText = @"SELECT PlayerName, NumAttended, NumIdols from ZulGurub where PlayerName = @PlayerName";

            command.Parameters.AddWithValue("PlayerName", playerName);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dtPlayers = new DataTable();
            da.Fill(dt);

            return dt;
        }

        private void setGridWidth(GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                for (int i = 0; i < e.Row.Cells.Count; i++)
                {
                    e.Row.Cells[i].Width = 100;
                }
            }
        }

        protected void dpsWarriorGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            setGridWidth(e);
        }

        protected void tankWarriorGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            setGridWidth(e);
        }

        protected void rogueGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            setGridWidth(e);
        }

        protected void hunterGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            setGridWidth(e);
        }

        protected void druidGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            setGridWidth(e);
        }

        protected void paladinGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            setGridWidth(e);
        }

        protected void priestGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            setGridWidth(e);
        }

        protected void mageGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            setGridWidth(e);
        }

        protected void warlockGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            setGridWidth(e);
        }


    }
}