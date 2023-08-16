using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Ability_Ability : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLABILITYTableAdapter dt = new DataSetTableAdapters.TBLABILITYTableAdapter();
        Repeater1.DataSource = dt.GetAbilityList();
        Repeater1.DataBind();
    }
}