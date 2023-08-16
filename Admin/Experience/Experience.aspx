<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Experience.aspx.cs" Inherits="Admin_Experience_Experience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>DENEYIM BASLIGI</th>
                <th>DENEYIM ALT BASLIGI</th>
                <th>DENEYIM ACIKLAMASI</th>
                <th>DENEYIM TARIHI</th>
                <th>ISLEMLER</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("EXPERIENCETITLE") %></td>
                            <td><%# Eval("EXPERIENCESUBTITLE") %></td>
                            <td><%# Eval("EXPERIENCEDESCRIPTION") %></td>
                            <td><%# Eval("EXPERIENCEYEAR") %></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "RemoveExperience.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning">Sil</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "UpdateExperience.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="AddExperience.aspx" CssClass="btn btn-info">Deneyim Ekle</asp:HyperLink>

    </form>
</asp:Content>

