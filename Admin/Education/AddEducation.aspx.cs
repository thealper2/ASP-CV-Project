using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Education_AddEducation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
        dt.InsertEducation(TxtEducationName.Text, TxtEducationType.Text, TxtEducationDescription.Text, TxtEducationGnot.Text, TxtEducationYear.Text);
        Response.Redirect("Education.aspx");
    }
}