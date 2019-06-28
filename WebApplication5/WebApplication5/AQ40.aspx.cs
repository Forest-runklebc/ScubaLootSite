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
            if (Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }

            if (!IsPostBack)
            {
                calendarAQ40.SelectedDate = DateTime.Today;
            }
        }

        protected void WriteToDatabase_Click(object sender, EventArgs e)
        {
            string dateOfRaid = calendarAQ40.SelectedDate.ToString("yyyy-MM-dd");

            Utility.InsertPlayerlootQuery(comboSkeramPlayer1.SelectedValue, comboSkeramLoot1.SelectedValue, radioSkeram1.SelectedValue, dateOfRaid, checkboxSkeram1.Checked);
            Utility.InsertPlayerlootQuery(comboSkeramPlayer2.SelectedValue, comboSkeramLoot2.SelectedValue, radioSkeram2.SelectedValue, dateOfRaid, checkboxSkeram2.Checked);
            Utility.InsertPlayerlootQuery(comboSkeramPlayer3.SelectedValue, comboSkeramLoot3.SelectedValue, radioSkeram3.SelectedValue, dateOfRaid, checkboxSkeram3.Checked);

            Utility.InsertPlayerlootQuery(comboBugTrioPlayer1.SelectedValue, comboBugTrioLoot1.SelectedValue, radioBugTrio1.SelectedValue, dateOfRaid, checkboxBugTrio1.Checked);
            Utility.InsertPlayerlootQuery(comboBugTrioPlayer2.SelectedValue, comboBugTrioLoot2.SelectedValue, radioBugTrio2.SelectedValue, dateOfRaid, checkboxBugTrio2.Checked);
            Utility.InsertPlayerlootQuery(comboBugTrioPlayer3.SelectedValue, comboBugTrioLoot3.SelectedValue, radioBugTrio3.SelectedValue, dateOfRaid, checkboxBugTrio3.Checked);

            Utility.InsertPlayerlootQuery(comboSarturaPlayer1.SelectedValue, comboSarturaLoot1.SelectedValue, radioSartura1.SelectedValue, dateOfRaid, checkboxSartura1.Checked);
            Utility.InsertPlayerlootQuery(comboSarturaPlayer2.SelectedValue, comboSarturaLoot2.SelectedValue, radioSartura2.SelectedValue, dateOfRaid, checkboxSartura2.Checked);
            Utility.InsertPlayerlootQuery(comboSarturaPlayer3.SelectedValue, comboSarturaLoot3.SelectedValue, radioSartura3.SelectedValue, dateOfRaid, checkboxSartura3.Checked);

            Utility.InsertPlayerlootQuery(comboFankrissPlayer1.SelectedValue, comboFankrissLoot1.SelectedValue, radioFankriss1.SelectedValue, dateOfRaid, checkboxFankriss1.Checked);
            Utility.InsertPlayerlootQuery(comboFankrissPlayer2.SelectedValue, comboFankrissLoot2.SelectedValue, radioFankriss2.SelectedValue, dateOfRaid, checkboxFankriss2.Checked);
            Utility.InsertPlayerlootQuery(comboFankrissPlayer3.SelectedValue, comboFankrissLoot3.SelectedValue, radioFankriss3.SelectedValue, dateOfRaid, checkboxFankriss3.Checked);

            Utility.InsertPlayerlootQuery(comboViscPlayer1.SelectedValue, comboViscLoot1.SelectedValue, radioVisc1.SelectedValue, dateOfRaid, checkboxVisc1.Checked);
            Utility.InsertPlayerlootQuery(comboViscPlayer2.SelectedValue, comboViscLoot2.SelectedValue, radioVisc2.SelectedValue, dateOfRaid, checkboxVisc2.Checked);
            Utility.InsertPlayerlootQuery(comboViscPlayer3.SelectedValue, comboViscLoot3.SelectedValue, radioVisc3.SelectedValue, dateOfRaid, checkboxVisc3.Checked);
            Utility.InsertPlayerlootQuery(comboViscPlayer4.SelectedValue, comboViscLoot4.SelectedValue, radioVisc4.SelectedValue, dateOfRaid, checkboxVisc4.Checked);

            Utility.InsertPlayerlootQuery(comboHuhuPlayer1.SelectedValue, comboHuhuLoot1.SelectedValue, radioHuhu1.SelectedValue, dateOfRaid, checkboxHuhu1.Checked);
            Utility.InsertPlayerlootQuery(comboHuhuPlayer2.SelectedValue, comboHuhuLoot2.SelectedValue, radioHuhu2.SelectedValue, dateOfRaid, checkboxHuhu2.Checked);
            Utility.InsertPlayerlootQuery(comboHuhuPlayer3.SelectedValue, comboHuhuLoot3.SelectedValue, radioHuhu3.SelectedValue, dateOfRaid, checkboxHuhu3.Checked);
            Utility.InsertPlayerlootQuery(comboHuhuPlayer4.SelectedValue, comboHuhuLoot4.SelectedValue, radioHuhu4.SelectedValue, dateOfRaid, checkboxHuhu4.Checked);

            Utility.InsertPlayerlootQuery(comboTwinsPlayer1.SelectedValue, comboTwinsLoot1.SelectedValue, radioTwins1.SelectedValue, dateOfRaid, checkboxTwins1.Checked);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer2.SelectedValue, comboTwinsLoot2.SelectedValue, radioTwins2.SelectedValue, dateOfRaid, checkboxTwins2.Checked);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer3.SelectedValue, comboTwinsLoot3.SelectedValue, radioTwins3.SelectedValue, dateOfRaid, checkboxTwins3.Checked);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer4.SelectedValue, comboTwinsLoot4.SelectedValue, radioTwins4.SelectedValue, dateOfRaid, checkboxTwins4.Checked);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer5.SelectedValue, comboTwinsLoot5.SelectedValue, radioTwins5.SelectedValue, dateOfRaid, checkboxTwins5.Checked);
            Utility.InsertPlayerlootQuery(comboTwinsPlayer6.SelectedValue, comboTwinsLoot6.SelectedValue, radioTwins6.SelectedValue, dateOfRaid, checkboxTwins6.Checked);

            Utility.InsertPlayerlootQuery(comboOuroPlayer1.SelectedValue, comboOuroLoot1.SelectedValue, radioOuro1.SelectedValue, dateOfRaid, checkboxOuro1.Checked);
            Utility.InsertPlayerlootQuery(comboOuroPlayer2.SelectedValue, comboOuroLoot2.SelectedValue, radioOuro2.SelectedValue, dateOfRaid, checkboxOuro2.Checked);
            Utility.InsertPlayerlootQuery(comboOuroPlayer3.SelectedValue, comboOuroLoot3.SelectedValue, radioOuro3.SelectedValue, dateOfRaid, checkboxOuro3.Checked);
            Utility.InsertPlayerlootQuery(comboOuroPlayer4.SelectedValue, comboOuroLoot4.SelectedValue, radioOuro4.SelectedValue, dateOfRaid, checkboxOuro4.Checked);

            Utility.InsertPlayerlootQuery(comboCthunPlayer1.SelectedValue, comboCthunLoot1.SelectedValue, radioCthun1.SelectedValue, dateOfRaid, checkboxCthun1.Checked);
            Utility.InsertPlayerlootQuery(comboCthunPlayer2.SelectedValue, comboCthunLoot2.SelectedValue, radioCthun2.SelectedValue, dateOfRaid, checkboxCthun2.Checked);
            Utility.InsertPlayerlootQuery(comboCthunPlayer3.SelectedValue, comboCthunLoot3.SelectedValue, radioCthun3.SelectedValue, dateOfRaid, checkboxCthun3.Checked);
            Utility.InsertPlayerlootQuery(comboCthunPlayer4.SelectedValue, comboCthunLoot4.SelectedValue, radioCthun4.SelectedValue, dateOfRaid, checkboxCthun4.Checked);
            Utility.InsertPlayerlootQuery(comboCthunPlayer5.SelectedValue, comboCthunLoot5.SelectedValue, radioCthun5.SelectedValue, dateOfRaid, checkboxCthun5.Checked);

            Utility.InsertPlayerlootQuery(comboTrashPlayer1.SelectedValue, comboTrashLoot1.SelectedValue, radioTrash1.SelectedValue, dateOfRaid, checkboxTrash1.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer2.SelectedValue, comboTrashLoot2.SelectedValue, radioTrash2.SelectedValue, dateOfRaid, checkboxTrash2.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer3.SelectedValue, comboTrashLoot3.SelectedValue, radioTrash3.SelectedValue, dateOfRaid, checkboxTrash3.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer4.SelectedValue, comboTrashLoot4.SelectedValue, radioTrash4.SelectedValue, dateOfRaid, checkboxTrash4.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer5.SelectedValue, comboTrashLoot5.SelectedValue, radioTrash5.SelectedValue, dateOfRaid, checkboxTrash5.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer6.SelectedValue, comboTrashLoot6.SelectedValue, radioTrash6.SelectedValue, dateOfRaid, checkboxTrash6.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer7.SelectedValue, comboTrashLoot7.SelectedValue, radioTrash7.SelectedValue, dateOfRaid, checkboxTrash7.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer8.SelectedValue, comboTrashLoot8.SelectedValue, radioTrash8.SelectedValue, dateOfRaid, checkboxTrash8.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer9.SelectedValue, comboTrashLoot9.SelectedValue, radioTrash9.SelectedValue, dateOfRaid, checkboxTrash9.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer10.SelectedValue, comboTrashLoot10.SelectedValue, radioTrash10.SelectedValue, dateOfRaid, checkboxTrash10.Checked);
        }
    }
}