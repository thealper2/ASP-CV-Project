using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Hobby_AddHobby : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLHOBBYTableAdapter dt = new DataSetTableAdapters.TBLHOBBYTableAdapter();
        dt.InsertHobby(TxtHobbyName.Text);
        Response.Redirect("Hobby.aspx");
    }
}