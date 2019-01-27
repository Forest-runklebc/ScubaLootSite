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
            string dateOfRaid = calendarNaxx.SelectedDate.ToString("yyyy-MM-dd");

            Utility.InsertPlayerlootQuery(comboAnubPlayer1.SelectedValue, comboAnubLoot1.SelectedValue, radioAnub1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboAnubPlayer2.SelectedValue, comboAnubLoot2.SelectedValue, radioAnub2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboAnubPlayer3.SelectedValue, comboAnubLoot3.SelectedValue, radioAnub3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboFaerlinaPlayer1.SelectedValue, comboFaerlinaLoot1.SelectedValue, radioFaerlina1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboFaerlinaPlayer2.SelectedValue, comboFaerlinaLoot2.SelectedValue, radioFaerlina2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboFaerlinaPlayer3.SelectedValue, comboFaerlinaLoot3.SelectedValue, radioFaerlina3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboMaexxnaPlayer1.SelectedValue, comboMaexxnaLoot1.SelectedValue, radioMaexxna1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboMaexxnaPlayer2.SelectedValue, comboMaexxnaLoot2.SelectedValue, radioMaexxna2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboMaexxnaPlayer3.SelectedValue, comboMaexxnaLoot3.SelectedValue, radioMaexxna3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboMaexxnaPlayer4.SelectedValue, comboMaexxnaLoot4.SelectedValue, radioMaexxna4.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboNothPlayer1.SelectedValue, comboNothLoot1.SelectedValue, radioNoth1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboNothPlayer2.SelectedValue, comboNothLoot2.SelectedValue, radioNoth2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboNothPlayer3.SelectedValue, comboNothLoot3.SelectedValue, radioNoth3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboHeiganPlayer1.SelectedValue, comboHeiganLoot1.SelectedValue, radioHeigan1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboHeiganPlayer2.SelectedValue, comboHeiganLoot2.SelectedValue, radioHeigan2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboHeiganPlayer3.SelectedValue, comboHeiganLoot3.SelectedValue, radioHeigan3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboLoathebPlayer1.SelectedValue, comboLoathebLoot1.SelectedValue, radioLoatheb1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboLoathebPlayer2.SelectedValue, comboLoathebLoot2.SelectedValue, radioLoatheb2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboLoathebPlayer3.SelectedValue, comboLoathebLoot3.SelectedValue, radioLoatheb3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboLoathebPlayer4.SelectedValue, comboLoathebLoot4.SelectedValue, radioLoatheb4.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboPatchwerkPlayer1.SelectedValue, comboPatchwerkLoot1.SelectedValue, radioPatchwerk1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboPatchwerkPlayer2.SelectedValue, comboPatchwerkLoot2.SelectedValue, radioPatchwerk2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboPatchwerkPlayer3.SelectedValue, comboPatchwerkLoot3.SelectedValue, radioPatchwerk3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboGrobbulusPlayer1.SelectedValue, comboGrobbulusLoot1.SelectedValue, radioGrobbulus1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGrobbulusPlayer2.SelectedValue, comboGrobbulusLoot2.SelectedValue, radioGrobbulus2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGrobbulusPlayer3.SelectedValue, comboGrobbulusLoot3.SelectedValue, radioGrobbulus3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboGluthPlayer1.SelectedValue, comboGluthLoot1.SelectedValue, radioGluth1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGluthPlayer2.SelectedValue, comboGluthLoot2.SelectedValue, radioGluth2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGluthPlayer3.SelectedValue, comboGluthLoot3.SelectedValue, radioGluth3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboThaddiusPlayer1.SelectedValue, comboThaddiusLoot1.SelectedValue, radioThaddius1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboThaddiusPlayer2.SelectedValue, comboThaddiusLoot2.SelectedValue, radioThaddius2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboThaddiusPlayer3.SelectedValue, comboThaddiusLoot3.SelectedValue, radioThaddius3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboThaddiusPlayer4.SelectedValue, comboThaddiusLoot4.SelectedValue, radioThaddius4.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboRazuviousPlayer1.SelectedValue, comboRazuviousLoot1.SelectedValue, radioRazuvious1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboRazuviousPlayer2.SelectedValue, comboRazuviousLoot2.SelectedValue, radioRazuvious2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboRazuviousPlayer3.SelectedValue, comboRazuviousLoot3.SelectedValue, radioRazuvious3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboGothikPlayer1.SelectedValue, comboGothikLoot1.SelectedValue, radioGothik1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGothikPlayer2.SelectedValue, comboGothikLoot2.SelectedValue, radioGothik2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGothikPlayer3.SelectedValue, comboGothikLoot3.SelectedValue, radioGothik3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboHorsePlayer1.SelectedValue, comboHorseLoot1.SelectedValue, radioHorse1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboHorsePlayer2.SelectedValue, comboHorseLoot2.SelectedValue, radioHorse2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboHorsePlayer3.SelectedValue, comboHorseLoot3.SelectedValue, radioHorse3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboHorsePlayer4.SelectedValue, comboHorseLoot4.SelectedValue, radioHorse4.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboSapphironPlayer1.SelectedValue, comboSapphironLoot1.SelectedValue, radioSapphiron1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboSapphironPlayer2.SelectedValue, comboSapphironLoot2.SelectedValue, radioSapphiron2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboSapphironPlayer3.SelectedValue, comboSapphironLoot3.SelectedValue, radioSapphiron3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboSapphironPlayer4.SelectedValue, comboSapphironLoot4.SelectedValue, radioSapphiron4.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboSapphironPlayer5.SelectedValue, comboSapphironLoot5.SelectedValue, radioSapphiron5.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboKelThuzadPlayer1.SelectedValue, comboKelThuzadLoot1.SelectedValue, radioKelThuzad1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboKelThuzadPlayer2.SelectedValue, comboKelThuzadLoot2.SelectedValue, radioKelThuzad2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboKelThuzadPlayer3.SelectedValue, comboKelThuzadLoot3.SelectedValue, radioKelThuzad3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboKelThuzadPlayer4.SelectedValue, comboKelThuzadLoot4.SelectedValue, radioKelThuzad4.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboKelThuzadPlayer5.SelectedValue, comboKelThuzadLoot5.SelectedValue, radioKelThuzad5.SelectedValue, dateOfRaid);

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