using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Education_UpdateEducation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["ID"]);
        TxtId.Enabled = false;
        TxtId.Text = id.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLEDUCATIONTableAdapter dt = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
            TxtEducationName.Text = dt.GetEducation(id)[0].EDUCATIONNAME;
            TxtEducationType.Text = dt.GetEducation(id)[0].EDUCATIONTYPE;
            TxtEducationDescription.Text = dt.GetEducation(id)[0].DESCRIPTION;
            TxtEducationGnot.Text = dt.GetEducation(id)[0].GNOT;
            TxtEducationYear.Text = dt.GetEducation(id)[0].EDUCATIONYEAR;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLEDUCATIONTableAdapter dt1 = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
        dt1.UpdateEducation(TxtEducationName.Text, TxtEducationType.Text, TxtEducationDescription.Text, TxtEducationGnot.Text, TxtEducationYear.Text, Convert.ToInt32(TxtId.Text));
        Response.Redirect("Education.aspx");
    }
}