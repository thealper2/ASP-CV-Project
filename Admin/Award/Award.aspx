<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Award.aspx.cs" Inherits="Admin_Award_Award" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>ODUL ADI</th>
                <th>ODUL ACIKLAMASI</th>
                <th>ODUL TARIHI</th>
                <th>ISLEMLER</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("AWARDNAME") %></td>
                            <td><%# Eval("AWARDDESCRIPTION") %></td>
                            <td><%# Eval("AWARDDATE") %></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "RemoveAward.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning">Sil</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "UpdateAward.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="AddAward.aspx" CssClass="btn btn-info">Ödül Ekle</asp:HyperLink>

    </form>
</asp:Content>

