<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td>
                <asp:DataList ID="DataList3" runat="server">
                    <ItemTemplate>
                        <table class="auto-style3">
                            <tr>
                                <td class="auto-style4"><strong>
                                    <asp:Label ID="Label10" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
                                    </strong></td>
                            </tr>
                            <tr>
                                <td><strong><span class="auto-style2">Malzemeler:</span></strong><asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td><strong><span class="auto-style2">Tarif:</span></strong><asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Image ID="Image1" runat="server" Height="169px" ImageUrl='<%# Eval("YemekResim") %>' Width="411px" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="auto-style3">
                                        <tr>
                                            <td><strong><span class="auto-style2">Puan: </span></strong>
                                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                                &nbsp;</td>
                                            <td class="auto-style2">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td><strong><span class="auto-style2">Ekleme Tarihi: </span><em>
                                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                                </em></strong></td>
                                            <td class="auto-style2">&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
