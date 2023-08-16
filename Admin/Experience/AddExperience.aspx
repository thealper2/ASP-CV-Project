<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddExperience.aspx.cs" Inherits="Admin_Experience_AddExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Deneyim Başlığı"></asp:Label>
                <asp:TextBox ID="TxtExperienceTitle" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Deneyim Alt Başlığı"></asp:Label>
                <asp:TextBox ID="TxtExperienceSubtitle" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Deneyim Açıklaması"></asp:Label>
                <asp:TextBox ID="TxtExperienceDescription" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Deneyim Yılı"></asp:Label>
                <asp:TextBox ID="TxtExperienceYear" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Yetenek Ekle" CssClass="btn btn-primary" OnClick="Button1_Click"/>
            </div>
        </div>
    </form>
</asp:Content>

