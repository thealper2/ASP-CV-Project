using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Award_AddAward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLAWARDTableAdapter dt = new DataSetTableAdapters.TBLAWARDTableAdapter();
        dt.InsertAward(TxtAwardName.Text, TxtAwardDescription.Text, TxtAwardDate.Text);
        Response.Redirect("Award.aspx");
    }
}