<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="UpdateExperience.aspx.cs" Inherits="Admin_Experience_UpdateExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="TxtId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Deneyim Başlığı"></asp:Label>
                <asp:TextBox ID="TxtExperienceTitle" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Deneyim Alt Başlığı"></asp:Label>
                <asp:TextBox ID="TxtExperienceSubtitle" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Deneyim Açıklaması"></asp:Label>
                <asp:TextBox ID="TxtExperienceDescription" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Deneyim Tarihi"></asp:Label>
                <asp:TextBox ID="TxtExperienceYear" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="BtnUpdate" runat="server" Text="Güncelle" CssClass="btn btn-info" OnClick="BtnUpdate_Click" />
        </div>
    </form>
</asp:Content>

