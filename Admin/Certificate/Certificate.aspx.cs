using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Certificate_Certificate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLCERTIFICATETableAdapter dt = new DataSetTableAdapters.TBLCERTIFICATETableAdapter();
        Repeater1.DataSource = dt.GetCertificateList();
        Repeater1.DataBind();
    }
}