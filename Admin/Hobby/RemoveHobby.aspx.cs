using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Hobby_RemoveHobby : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"]);
        DataSetTableAdapters.TBLHOBBYTableAdapter dt = new DataSetTableAdapters.TBLHOBBYTableAdapter();
        dt.DeleteHobby(id);
        Response.Redirect("Hobby.aspx");
    }
}