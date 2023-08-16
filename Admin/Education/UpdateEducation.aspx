<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="UpdateEducation.aspx.cs" Inherits="Admin_Education_UpdateEducation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="TxtId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Eğitim Adı"></asp:Label>
                <asp:TextBox ID="TxtEducationName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Eğitim Türü"></asp:Label>
                <asp:TextBox ID="TxtEducationType" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Eğitim Açıklama"></asp:Label>
                <asp:TextBox ID="TxtEducationDescription" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="Eğitim Gnot"></asp:Label>
                <asp:TextBox ID="TxtEducationGnot" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label6" runat="server" Text="Eğitim Yılı"></asp:Label>
                <asp:TextBox ID="TxtEducationYear" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />
        </div>
    </form>
</asp:Content>

