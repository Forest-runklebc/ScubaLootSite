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
                Utility.getRaidsForSelectedDate(calendarBWL, labelRaidsRun);
            }
        }


        protected void WriteToDatabase_Click(object sender, EventArgs e)
        {
            string dateOfRaid = calendarBWL.SelectedDate.ToString("yyyy-MM-dd");

            Utility.InsertPlayerlootQuery(comboRazorgorePlayer1.SelectedValue, comboRazorgoreLoot1.SelectedValue, radioRazorgore1.SelectedValue, dateOfRaid, checkboxRazorgore1.Checked);
            Utility.InsertPlayerlootQuery(comboRazorgorePlayer2.SelectedValue, comboRazorgoreLoot2.SelectedValue, radioRazorgore2.SelectedValue, dateOfRaid, checkboxRazorgore2.Checked);
            Utility.InsertPlayerlootQuery(comboRazorgorePlayer3.SelectedValue, comboRazorgoreLoot3.SelectedValue, radioRazorgore3.SelectedValue, dateOfRaid, checkboxRazorgore3.Checked);

            Utility.InsertPlayerlootQuery(comboVaelPlayer1.SelectedValue, comboVaelLoot1.SelectedValue, radioVael1.SelectedValue, dateOfRaid, checkboxVael1.Checked);
            Utility.InsertPlayerlootQuery(comboVaelPlayer2.SelectedValue, comboVaelLoot2.SelectedValue, radioVael2.SelectedValue, dateOfRaid, checkboxVael2.Checked);
            Utility.InsertPlayerlootQuery(comboVaelPlayer3.SelectedValue, comboVaelLoot3.SelectedValue, radioVael3.SelectedValue, dateOfRaid, checkboxVael3.Checked);

            Utility.InsertPlayerlootQuery(comboBroodlordPlayer1.SelectedValue, comboBroodlordLoot1.SelectedValue, radioBroodlord1.SelectedValue, dateOfRaid, checkboxBroodlord1.Checked);
            Utility.InsertPlayerlootQuery(comboBroodlordPlayer2.SelectedValue, comboBroodlordLoot2.SelectedValue, radioBroodlord2.SelectedValue, dateOfRaid, checkboxBroodlord2.Checked);
            Utility.InsertPlayerlootQuery(comboBroodlordPlayer3.SelectedValue, comboBroodlordLoot3.SelectedValue, radioBroodlord3.SelectedValue, dateOfRaid, checkboxBroodlord3.Checked);

            Utility.InsertPlayerlootQuery(comboFiremawPlayer1.SelectedValue, comboFiremawLoot1.SelectedValue, radioFiremaw1.SelectedValue, dateOfRaid, checkboxFiremaw1.Checked);
            Utility.InsertPlayerlootQuery(comboFiremawPlayer2.SelectedValue, comboFiremawLoot2.SelectedValue, radioFiremaw2.SelectedValue, dateOfRaid, checkboxFiremaw2.Checked);

            Utility.InsertPlayerlootQuery(comboEbonrocPlayer1.SelectedValue, comboEbonrocLoot1.SelectedValue, radioEbonroc1.SelectedValue, dateOfRaid, checkboxEbonroc1.Checked);
            Utility.InsertPlayerlootQuery(comboEbonrocPlayer2.SelectedValue, comboEbonrocLoot2.SelectedValue, radioEbonroc2.SelectedValue, dateOfRaid, checkboxEbonroc2.Checked);

            Utility.InsertPlayerlootQuery(comboFlamegorePlayer1.SelectedValue, comboFlamegoreLoot1.SelectedValue, radioFlamegore1.SelectedValue, dateOfRaid, checkboxFlamegore1.Checked);
            Utility.InsertPlayerlootQuery(comboFlamegorePlayer2.SelectedValue, comboFlamegoreLoot2.SelectedValue, radioFlamegore2.SelectedValue, dateOfRaid, checkboxFlamegore2.Checked);

            Utility.InsertPlayerlootQuery(comboChromagPlayer1.SelectedValue, comboChromagLoot1.SelectedValue, radioChromag1.SelectedValue, dateOfRaid, checkboxChromag1.Checked);
            Utility.InsertPlayerlootQuery(comboChromagPlayer2.SelectedValue, comboChromagLoot2.SelectedValue, radioChromag2.SelectedValue, dateOfRaid, checkboxChromag2.Checked);
            Utility.InsertPlayerlootQuery(comboChromagPlayer3.SelectedValue, comboChromagLoot3.SelectedValue, radioChromag3.SelectedValue, dateOfRaid, checkboxChromag3.Checked);
            Utility.InsertPlayerlootQuery(comboChromagPlayer4.SelectedValue, comboChromagLoot4.SelectedValue, radioChromag4.SelectedValue, dateOfRaid, checkboxChromag4.Checked);

            Utility.InsertPlayerlootQuery(comboNefPlayer1.SelectedValue, comboNefLoot1.SelectedValue, radioNef1.SelectedValue, dateOfRaid, checkboxNef1.Checked);
            Utility.InsertPlayerlootQuery(comboNefPlayer2.SelectedValue, comboNefLoot2.SelectedValue, radioNef2.SelectedValue, dateOfRaid, checkboxNef2.Checked);
            Utility.InsertPlayerlootQuery(comboNefPlayer3.SelectedValue, comboNefLoot3.SelectedValue, radioNef3.SelectedValue, dateOfRaid, checkboxNef3.Checked);
            Utility.InsertPlayerlootQuery(comboNefPlayer4.SelectedValue, comboNefLoot4.SelectedValue, radioNef4.SelectedValue, dateOfRaid, checkboxNef4.Checked);
            Utility.InsertPlayerlootQuery(comboNefPlayer5.SelectedValue, comboNefLoot5.SelectedValue, radioNef5.SelectedValue, dateOfRaid, checkboxNef5.Checked);

            Utility.InsertPlayerlootQuery(comboTrashPlayer1.SelectedValue, comboTrashLoot1.SelectedValue, radioTrash1.SelectedValue, dateOfRaid, checkboxTrashLoot1.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer2.SelectedValue, comboTrashLoot2.SelectedValue, radioTrash2.SelectedValue, dateOfRaid, checkboxTrashLoot2.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer3.SelectedValue, comboTrashLoot3.SelectedValue, radioTrash3.SelectedValue, dateOfRaid, checkboxTrashLoot3.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer4.SelectedValue, comboTrashLoot4.SelectedValue, radioTrash4.SelectedValue, dateOfRaid, checkboxTrashLoot4.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer5.SelectedValue, comboTrashLoot5.SelectedValue, radioTrash5.SelectedValue, dateOfRaid, checkboxTrashLoot5.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer6.SelectedValue, comboTrashLoot6.SelectedValue, radioTrash6.SelectedValue, dateOfRaid, checkboxTrashLoot6.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer7.SelectedValue, comboTrashLoot7.SelectedValue, radioTrash7.SelectedValue, dateOfRaid, checkboxTrashLoot7.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer8.SelectedValue, comboTrashLoot8.SelectedValue, radioTrash8.SelectedValue, dateOfRaid, checkboxTrashLoot8.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer9.SelectedValue, comboTrashLoot9.SelectedValue, radioTrash9.SelectedValue, dateOfRaid, checkboxTrashLoot9.Checked);
            Utility.InsertPlayerlootQuery(comboTrashPlayer10.SelectedValue, comboTrashLoot10.SelectedValue, radioTrash10.SelectedValue, dateOfRaid, checkboxTrashLoot10.Checked);

        }

        protected void calendarBWL_SelectionChanged(object sender, EventArgs e)
        {
            Utility.getRaidsForSelectedDate(calendarBWL, labelRaidsRun);
        }
    }
}