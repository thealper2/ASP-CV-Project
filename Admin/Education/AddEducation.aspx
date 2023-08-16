<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddEducation.aspx.cs" Inherits="Admin_Education_AddEducation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="Eğitim Adı"></asp:Label>
                <asp:TextBox ID="TxtEducationName" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Eğitim Türü"></asp:Label>
                <asp:TextBox ID="TxtEducationType" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Eğitim Açıklaması"></asp:Label>
                <asp:TextBox ID="TxtEducationDescription" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Gnot"></asp:Label>
                <asp:TextBox ID="TxtEducationGnot" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Eğitim Yılı"></asp:Label>
                <asp:TextBox ID="TxtEducationYear" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Eğitim Ekle" CssClass="btn btn-primary" OnClick="Button1_Click" />
            </div>
        </div>
    </form>
</asp:Content>

