<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Certificate.aspx.cs" Inherits="Admin_Certificate_Certificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>SERTIFIKA ADI</th>
                <th>SERTIFIKA YILI</th>
                <th>ISLEMLER</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("CERTIFICATENAME") %></td>
                            <td><%# Eval("CERTIFICATEYEAR") %></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "RemoveCertificate.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning">Sil</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "UpdateCertificate.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="AddCertificate.aspx" CssClass="btn btn-info">Sertifika Ekle</asp:HyperLink>

    </form>
</asp:Content>

