using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Experience_UpdateExperience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["ID"]);
        TxtId.Enabled = false;
        TxtId.Text = id.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLEXPERIENCETableAdapter dt = new DataSetTableAdapters.TBLEXPERIENCETableAdapter();
            TxtExperienceTitle.Text = dt.GetExperience(id)[0].EXPERIENCETITLE;
            TxtExperienceSubtitle.Text = dt.GetExperience(id)[0].EXPERIENCESUBTITLE;
            TxtExperienceDescription.Text = dt.GetExperience(id)[0].EXPERIENCEDESCRIPTION;
            TxtExperienceYear.Text = dt.GetExperience(id)[0].EXPERIENCEYEAR;
        }
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLEXPERIENCETableAdapter dt1 = new DataSetTableAdapters.TBLEXPERIENCETableAdapter();
        dt1.UpdateExperience(TxtExperienceTitle.Text, TxtExperienceSubtitle.Text, TxtExperienceDescription.Text, TxtExperienceYear.Text, Convert.ToInt32(TxtId.Text));
        Response.Redirect("Experience.aspx");
    }
}