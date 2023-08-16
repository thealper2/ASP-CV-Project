using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Award_Award : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLAWARDTableAdapter dt = new DataSetTableAdapters.TBLAWARDTableAdapter();
        Repeater1.DataSource = dt.GetAwardList();
        Repeater1.DataBind();
    }
}