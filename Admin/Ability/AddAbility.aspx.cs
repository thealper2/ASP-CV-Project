using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Ability_AddAbility : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLABILITYTableAdapter dt = new DataSetTableAdapters.TBLABILITYTableAdapter();
        dt.InsertAbility(TxtAbilityName.Text, TxtAbilityDescription.Text);
        Response.Redirect("Ability.aspx");
    }
}