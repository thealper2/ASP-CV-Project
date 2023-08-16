using DataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLABOUTTableAdapter dt_about = new DataSetTableAdapters.TBLABOUTTableAdapter();
        Repeater1.DataSource = dt_about.GetAboutList();
        Repeater1.DataBind();

        Repeater8.DataSource = dt_about.GetAboutList();
        Repeater8.DataBind();

        DataSetTableAdapters.TBLEXPERIENCETableAdapter dt_experience = new DataSetTableAdapters.TBLEXPERIENCETableAdapter();
        Repeater2.DataSource = dt_experience.GetExperienceList();
        Repeater2.DataBind();

        DataSetTableAdapters.TBLEDUCATIONTableAdapter dt_education = new DataSetTableAdapters.TBLEDUCATIONTableAdapter();
        Repeater3.DataSource = dt_education.GetEducationList();
        Repeater3.DataBind();

        DataSetTableAdapters.TBLABILITYTableAdapter dt_ability = new DataSetTableAdapters.TBLABILITYTableAdapter();
        Repeater4.DataSource = dt_ability.GetAbilityList();
        Repeater4.DataBind();

        DataSetTableAdapters.TBLHOBBYTableAdapter dt_hobby = new DataSetTableAdapters.TBLHOBBYTableAdapter();
        Repeater5.DataSource = dt_hobby.GetHobbyList();
        Repeater5.DataBind();

        DataSetTableAdapters.TBLAWARDTableAdapter dt_award = new DataSetTableAdapters.TBLAWARDTableAdapter();
        Repeater6.DataSource = dt_award.GetAwardList();
        Repeater6.DataBind();

        DataSetTableAdapters.TBLCERTIFICATETableAdapter dt_certificate = new DataSetTableAdapters.TBLCERTIFICATETableAdapter();
        Repeater7.DataSource = dt_certificate.GetCertificateList();
        Repeater7.DataBind();
    }
}