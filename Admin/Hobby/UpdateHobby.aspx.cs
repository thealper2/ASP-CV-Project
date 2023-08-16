using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Hobby_UpdateHobby : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["ID"]);
        TxtId.Enabled = false;
        TxtId.Text = id.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLHOBBYTableAdapter dt = new DataSetTableAdapters.TBLHOBBYTableAdapter();
            TxtHobbyName.Text = dt.GetHobby(id)[0].HOBBYNAME;
        }
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLHOBBYTableAdapter dt1 = new DataSetTableAdapters.TBLHOBBYTableAdapter();
        dt1.UpdateHobby(TxtHobbyName.Text, Convert.ToInt32(TxtId.Text));
        Response.Redirect("Hobby.aspx");
    }
}