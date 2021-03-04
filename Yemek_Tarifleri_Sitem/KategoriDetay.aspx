<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style5 {
        width: 100%;
    }
    .auto-style7 {
        background-color: #C989E5;
            text-align: center;
        }
    .auto-style6 {
        font-size: x-large;
        color: #000000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style5">
            <tr>
                <td class="auto-style7"><strong><em><a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></em></strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler: </strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Tarif:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi: </strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    &nbsp;- <strong>Puan: </strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-width: thick">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
