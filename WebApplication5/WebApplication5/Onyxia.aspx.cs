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
    public partial class Onyxia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            if (!IsPostBack)
            {
                calendarOnyxia.SelectedDate = DateTime.Today;
                getPlayersWithOnyBag();
                Utility.getRaidsForSelectedDate(calendarOnyxia, labelRaidsRun);
            }
        }

        public void getPlayersWithOnyBag()
        {
            string getRosterQuery = "select PlayerName from PlayerLoot where ItemName = 'Bag'";

            string connectionString = ConfigurationManager.ConnectionStrings["BLAKE"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);

            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand command = connection.CreateCommand();
            command.CommandText = getRosterQuery;
            da.SelectCommand = command;
            DataTable dt = new DataTable();

            connection.Open();
            da.Fill(dt);
            connection.Close();

            List<string> listPlayersWithOnyBag = new List<string>();

            foreach (DataRow playerName in dt.Rows)
            {
                string player = playerName["PlayerName"].ToString();
                //labelHasOnyBag.Text = labelHasOnyBag.Text + itemName + ", ";
                listPlayersWithOnyBag.Add(player);
            }

            string[] arrayPlayersWithOnyBag = listPlayersWithOnyBag.ToArray();
            string allPlayersWithOnyBag = string.Join(", ", arrayPlayersWithOnyBag.Where(s => !string.IsNullOrEmpty(s)));
            labelHasOnyBag.Text = allPlayersWithOnyBag;
        }

        protected void WriteToDatabase_Click(object sender, EventArgs e)
        {
            string dateOfRaid = calendarOnyxia.SelectedDate.ToString("yyyy-MM-dd");

            Utility.InsertPlayerlootQuery(comboOnyxiaPlayer1.SelectedValue, comboOnyxiaLoot1.SelectedValue, radioOnyxia1.SelectedValue, dateOfRaid, checkboxOnyxia1.Checked);
            Utility.InsertPlayerlootQuery(comboOnyxiaPlayer2.SelectedValue, comboOnyxiaLoot2.SelectedValue, radioOnyxia2.SelectedValue, dateOfRaid, checkboxOnyxia2.Checked);
            Utility.InsertPlayerlootQuery(comboOnyxiaPlayer3.SelectedValue, comboOnyxiaLoot3.SelectedValue, radioOnyxia3.SelectedValue, dateOfRaid, checkboxOnyxia3.Checked);
            Utility.InsertPlayerlootQuery(comboOnyxiaPlayer4.SelectedValue, comboOnyxiaLoot4.SelectedValue, radioOnyxia4.SelectedValue, dateOfRaid, checkboxOnyxia4.Checked);
            Utility.InsertPlayerlootQuery(comboOnyxiaPlayer5.SelectedValue, comboOnyxiaLoot5.SelectedValue, radioOnyxia5.SelectedValue, dateOfRaid, checkboxOnyxia5.Checked);
            Utility.InsertPlayerlootQuery(comboOnyxiaPlayer6.SelectedValue, comboOnyxiaLoot6.SelectedValue, radioOnyxia6.SelectedValue, dateOfRaid, checkboxOnyxia6.Checked);
        }

        protected void calendarOnyxia_SelectionChanged(object sender, EventArgs e)
        {
            Utility.getRaidsForSelectedDate(calendarOnyxia, labelRaidsRun);
        }
    }
}