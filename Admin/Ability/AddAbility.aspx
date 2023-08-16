<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddAbility.aspx.cs" Inherits="Admin_Ability_AddAbility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Yetenek Adı"></asp:Label>
                <asp:TextBox ID="TxtAbilityName" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Yetenek Açıklaması"></asp:Label>
                <asp:TextBox ID="TxtAbilityDescription" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Yetenek Ekle" CssClass="btn btn-primary" OnClick="Button1_Click"/>
            </div>
        </div>
    </form>
</asp:Content>

