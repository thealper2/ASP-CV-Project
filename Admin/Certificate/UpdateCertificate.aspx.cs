using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Certificate_UpdateCertificate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"]);
        TxtId.Enabled = false;
        TxtId.Text = id.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBLCERTIFICATETableAdapter dt = new DataSetTableAdapters.TBLCERTIFICATETableAdapter();
            TxtCertificateName.Text = dt.GetCertificate(id)[0].CERTIFICATENAME;
            TxtCertificateYear.Text = dt.GetCertificate(id)[0].CERTIFICATEYEAR;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLCERTIFICATETableAdapter dt = new DataSetTableAdapters.TBLCERTIFICATETableAdapter();
        dt.UpdateCertificate(TxtCertificateName.Text, TxtCertificateYear.Text, Convert.ToInt32(TxtId.Text));
        Response.Redirect("Certificate.aspx");
    }
}