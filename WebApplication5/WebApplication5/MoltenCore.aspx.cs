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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessionUserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }

            if (!IsPostBack)
            {
                calendarMC.SelectedDate = DateTime.Today;
            }
        }

        protected void WriteToDatabase_Click(object sender, EventArgs e)
        {
            string dateOfRaid = calendarMC.SelectedDate.ToString("yyyy-MM-dd");

            Utility.InsertPlayerlootQuery(comboLucifronPlayer1.SelectedValue, comboLucifronLoot1.SelectedValue, radioLucifron1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboLucifronPlayer2.SelectedValue, comboLucifronLoot2.SelectedValue, radioLucifron2.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboMagmadarPlayer1.SelectedValue, comboMagmadarLoot1.SelectedValue, radioMagmadar1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboMagmadarPlayer2.SelectedValue, comboMagmadarLoot2.SelectedValue, radioMagmadar2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboMagmadarPlayer3.SelectedValue, comboMagmadarLoot3.SelectedValue, radioMagmadar3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboGehennasPlayer1.SelectedValue, comboGehennasLoot1.SelectedValue, radioGehennas1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGehennasPlayer2.SelectedValue, comboGehennasLoot2.SelectedValue, radioGehennas2.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboGarrPlayer1.SelectedValue, comboGarrLoot1.SelectedValue, radioGarr1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGarrPlayer2.SelectedValue, comboGarrLoot2.SelectedValue, radioGarr2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGarrPlayer3.SelectedValue, comboGarrLoot3.SelectedValue, radioGarr3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGarrPlayer4.SelectedValue, comboGarrLoot4.SelectedValue, radioGarr4.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboBaronPlayer1.SelectedValue, comboBaronLoot1.SelectedValue, radioBaron1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboBaronPlayer2.SelectedValue, comboBaronLoot2.SelectedValue, radioBaron2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboBaronPlayer3.SelectedValue, comboBaronLoot3.SelectedValue, radioBaron3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboShazzrahPlayer1.SelectedValue, comboShazzrahLoot1.SelectedValue, radioShazzrah1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboShazzrahPlayer2.SelectedValue, comboShazzrahLoot2.SelectedValue, radioShazzrah2.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboSulfuronPlayer1.SelectedValue, comboSulfuronLoot1.SelectedValue, radioSulfuron1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboSulfuronPlayer2.SelectedValue, comboSulfuronLoot2.SelectedValue, radioSulfuron2.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboGolemaggPlayer1.SelectedValue, comboGolemaggLoot1.SelectedValue, radioGolemagg1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGolemaggPlayer2.SelectedValue, comboGolemaggLoot2.SelectedValue, radioGolemagg2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboGolemaggPlayer3.SelectedValue, comboGolemaggLoot3.SelectedValue, radioGolemagg3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboMajordomoPlayer1.SelectedValue, comboMajordomoLoot1.SelectedValue, radioMajordomo1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboMajordomoPlayer2.SelectedValue, comboMajordomoLoot2.SelectedValue, radioMajordomo2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboMajordomoPlayer3.SelectedValue, comboMajordomoLoot3.SelectedValue, radioMajordomo3.SelectedValue, dateOfRaid);

            Utility.InsertPlayerlootQuery(comboRagnarosPlayer1.SelectedValue, comboRagnarosLoot1.SelectedValue, radioRagnaros1.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboRagnarosPlayer2.SelectedValue, comboRagnarosLoot2.SelectedValue, radioRagnaros2.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboRagnarosPlayer3.SelectedValue, comboRagnarosLoot3.SelectedValue, radioRagnaros3.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboRagnarosPlayer4.SelectedValue, comboRagnarosLoot4.SelectedValue, radioRagnaros4.SelectedValue, dateOfRaid);
            Utility.InsertPlayerlootQuery(comboRagnarosPlayer5.SelectedValue, comboRagnarosLoot5.SelectedValue, radioRagnaros5.SelectedValue, dateOfRaid);

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