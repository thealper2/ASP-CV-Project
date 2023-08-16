<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Ability.aspx.cs" Inherits="Admin_Ability_Ability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>YETENEK ADI</th>
                <th>YETENEK ACIKLAMASI</th>
                <th>ISLEMLER</th>
            </tr>

            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("ABILITYNAME") %></td>
                            <td><%# Eval("ABILITYDESCRIPTION") %></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "RemoveAbility.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-warning">Sil</asp:HyperLink>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "UpdateAbility.aspx?ID=" + Eval("ID") %>' CssClass="btn btn-primary">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>

        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="AddAbility.aspx" CssClass="btn btn-info">Yetenek Ekle</asp:HyperLink>

    </form>
</asp:Content>

