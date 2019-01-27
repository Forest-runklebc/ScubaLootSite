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
            string dateOfRaid = calendarAQ40.SelectedDate.ToString("yyyy-MM-dd");

            Utility.InsertPlayerlootQuery(comboSkeramPlayer1.SelectedValue, comboSkeramLoot1.SelectedValue, radioSkeram1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboSkeramPlayer2.SelectedValue, comboSkeramLoot2.SelectedValue, radioSkeram2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboSkeramPlayer3.SelectedValue, comboSkeramLoot3.SelectedValue, radioSkeram3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboBugTrioPlayer1.SelectedValue, comboBugTrioLoot1.SelectedValue, radioBugTrio1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboBugTrioPlayer2.SelectedValue, comboBugTrioLoot2.SelectedValue, radioBugTrio2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboBugTrioPlayer3.SelectedValue, comboBugTrioLoot3.SelectedValue, radioBugTrio3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboSarturaPlayer1.SelectedValue, comboSarturaLoot1.SelectedValue, radioSartura1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboSarturaPlayer2.SelectedValue, comboSarturaLoot2.SelectedValue, radioSartura2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboSarturaPlayer3.SelectedValue, comboSarturaLoot3.SelectedValue, radioSartura3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboFankrissPlayer1.SelectedValue, comboFankrissLoot1.SelectedValue, radioFankriss1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboFankrissPlayer2.SelectedValue, comboFankrissLoot2.SelectedValue, radioFankriss2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboFankrissPlayer3.SelectedValue, comboFankrissLoot3.SelectedValue, radioFankriss3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboViscPlayer1.SelectedValue, comboViscLoot1.SelectedValue, radioVisc1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboViscPlayer2.SelectedValue, comboViscLoot2.SelectedValue, radioVisc2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboViscPlayer3.SelectedValue, comboViscLoot3.SelectedValue, radioVisc3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboViscPlayer4.SelectedValue, comboViscLoot4.SelectedValue, radioVisc4.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboHuhuPlayer1.SelectedValue, comboHuhuLoot1.SelectedValue, radioHuhu1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboHuhuPlayer2.SelectedValue, comboHuhuLoot2.SelectedValue, radioHuhu2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboHuhuPlayer3.SelectedValue, comboHuhuLoot3.SelectedValue, radioHuhu3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboHuhuPlayer4.SelectedValue, comboHuhuLoot4.SelectedValue, radioHuhu4.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboTwinsPlayer1.SelectedValue, comboTwinsLoot1.SelectedValue, radioTwins1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer2.SelectedValue, comboTwinsLoot2.SelectedValue, radioTwins2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer3.SelectedValue, comboTwinsLoot3.SelectedValue, radioTwins3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer4.SelectedValue, comboTwinsLoot4.SelectedValue, radioTwins4.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer5.SelectedValue, comboTwinsLoot5.SelectedValue, radioTwins5.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer6.SelectedValue, comboTwinsLoot6.SelectedValue, radioTwins6.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboOuroPlayer1.SelectedValue, comboOuroLoot1.SelectedValue, radioOuro1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboOuroPlayer2.SelectedValue, comboOuroLoot2.SelectedValue, radioOuro2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboOuroPlayer3.SelectedValue, comboOuroLoot3.SelectedValue, radioOuro3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboOuroPlayer4.SelectedValue, comboOuroLoot4.SelectedValue, radioOuro4.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboCthunPlayer1.SelectedValue, comboCthunLoot1.SelectedValue, radioCthun1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboCthunPlayer2.SelectedValue, comboCthunLoot2.SelectedValue, radioCthun2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboCthunPlayer3.SelectedValue, comboCthunLoot3.SelectedValue, radioCthun3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboCthunPlayer4.SelectedValue, comboCthunLoot4.SelectedValue, radioCthun4.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboCthunPlayer5.SelectedValue, comboCthunLoot5.SelectedValue, radioCthun5.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboTrashPlayer1.SelectedValue, comboTrashLoot1.SelectedValue, radioTrash1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTrashPlayer2.SelectedValue, comboTrashLoot2.SelectedValue, radioTrash2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTrashPlayer3.SelectedValue, comboTrashLoot3.SelectedValue, radioTrash3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTrashPlayer4.SelectedValue, comboTrashLoot4.SelectedValue, radioTrash4.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTrashPlayer5.SelectedValue, comboTrashLoot5.SelectedValue, radioTrash5.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTrashPlayer6.SelectedValue, comboTrashLoot6.SelectedValue, radioTrash6.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTrashPlayer7.SelectedValue, comboTrashLoot7.SelectedValue, radioTrash7.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTrashPlayer8.SelectedValue, comboTrashLoot8.SelectedValue, radioTrash8.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTrashPlayer9.SelectedValue, comboTrashLoot9.SelectedValue, radioTrash9.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboTrashPlayer10.SelectedValue, comboTrashLoot10.SelectedValue, radioTrash10.SelectedValue, dateOfRaid);
        }        
    }
}