using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Hobby_Hobby : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLHOBBYTableAdapter dt = new DataSetTableAdapters.TBLHOBBYTableAdapter();
        Repeater1.DataSource = dt.GetHobbyList();
        Repeater1.DataBind();
    }
}