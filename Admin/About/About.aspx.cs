using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_About_About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLABOUTTableAdapter dt = new DataSetTableAdapters.TBLABOUTTableAdapter();
        TxtName.Text = dt.GetAboutList()[0].NAME;
        TxtSurname.Text = dt.GetAboutList()[0].SURNAME;
        TxtAddress.Text = dt.GetAboutList()[0].ADDRESS;
        TxtMail.Text = dt.GetAboutList()[0].MAIL;
        TxtPhone.Text = dt.GetAboutList()[0].PHONE;
        TxtAbout.Text = dt.GetAboutList()[0].ABOUT;
        TxtImage.Text = dt.GetAboutList()[0].IMAGE;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLABOUTTableAdapter dt1 = new DataSetTableAdapters.TBLABOUTTableAdapter();
        dt1.UpdateAbout(TxtName.Text, TxtSurname.Text, TxtAddress.Text, TxtMail.Text, TxtPhone.Text, TxtAbout.Text, TxtImage.Text, 1);
        Response.Redirect("About.aspx");
    }
}