<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style25"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style26"><strong><em>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </em></strong></td>
            <td class="auto-style25"><strong>YEMEK LİSTESİ</strong></td>
        </tr>
    </table>
       <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>">
                            <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/ICONS/img_94221.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
