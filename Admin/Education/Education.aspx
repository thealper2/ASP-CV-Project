<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Education.aspx.cs" Inherits="Admin_Education_Education" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>EGITIM ADI</th>
                <th>EGITIM TURU</th>
                <th>EGITIM ACIKLAMA</th>
                <th>EGITIM GNOT</th>
                <th>EGITIM YILI</th>
                <th>ISLEMLER</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("EDUCATIONNAME") %></td>
                            <td><%# Eval("EDUCATIONTYPE") %></td>
                            <td><%# Eval("DESCRIPTION") %></td>
                            <td><%# Eval("GNOT") %></td>
                            <td><%# Eval("EDUCATIONYEAR") %></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "RemoveEducation.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning">Sil</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "UpdateEducation.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="AddEducation.aspx" CssClass="btn btn-info">Eğitim Ekle</asp:HyperLink>

    </form>
</asp:Content>

