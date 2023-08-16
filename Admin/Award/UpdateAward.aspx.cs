using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Award_UpdateAward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"]);
        TxtId.Enabled = false;
        TxtId.Text = id.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLAWARDTableAdapter dt = new DataSetTableAdapters.TBLAWARDTableAdapter();
            TxtAwardName.Text = dt.GetAward(id)[0].AWARDNAME;
            TxtAwardDescription.Text = dt.GetAward(id)[0].AWARDDESCRIPTION;
            TxtAwardDate.Text = dt.GetAward(id)[0].AWARDDATE;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLAWARDTableAdapter dt = new DataSetTableAdapters.TBLAWARDTableAdapter();
        dt.UpdateAward(TxtAwardName.Text, TxtAwardDescription.Text, TxtAwardDate.Text, Convert.ToInt32(TxtId.Text));
        Response.Redirect("Award.aspx");
    }
}