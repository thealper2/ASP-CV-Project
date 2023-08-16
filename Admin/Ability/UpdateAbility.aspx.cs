using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Ability_UpdateAbility : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request["ID"]);
        TxtId.Enabled = false;
        TxtId.Text = id.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLABILITYTableAdapter dt = new DataSetTableAdapters.TBLABILITYTableAdapter();
            TxtAbilityName.Text = dt.GetAbility(id)[0].ABILITYNAME;
            TxtAbilityDescription.Text = dt.GetAbility(id)[0].ABILITYDESCRIPTION;
        }
    }

    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLABILITYTableAdapter dt1 = new DataSetTableAdapters.TBLABILITYTableAdapter();
        dt1.UpdateAbility(TxtAbilityName.Text, TxtAbilityDescription.Text, Convert.ToInt32(TxtId.Text));
        Response.Redirect("Ability.aspx");
    }
}