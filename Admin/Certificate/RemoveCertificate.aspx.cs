using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Certificate_RemoveCertificate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"]);
        DataSetTableAdapters.TBLCERTIFICATETableAdapter dt = new DataSetTableAdapters.TBLCERTIFICATETableAdapter();
        dt.DeleteCertificate(id);
        Response.Redirect("Certificate.aspx");
    }
}