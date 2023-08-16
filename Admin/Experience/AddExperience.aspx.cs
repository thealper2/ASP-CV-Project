using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Experience_AddExperience : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLEXPERIENCETableAdapter dt = new DataSetTableAdapters.TBLEXPERIENCETableAdapter();
        dt.InsertExperience(TxtExperienceTitle.Text, TxtExperienceSubtitle.Text, TxtExperienceDescription.Text, TxtExperienceYear.Text);
        Response.Redirect("Experience.aspx");
    }
}