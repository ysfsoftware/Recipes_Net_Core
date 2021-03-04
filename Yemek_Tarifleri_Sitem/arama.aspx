<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="arama.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.arama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
       <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style9" style="border-width:medium">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <strong>Malzemeler: </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        
                        <td><strong>Tarif: </strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
