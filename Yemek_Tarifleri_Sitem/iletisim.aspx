<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 169px;
        }
        .auto-style8 {
            height: 29px;
            width: 169px;
            text-align: right;
        }
        .auto-style9 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style10 {
            width: 169px;
            text-align: right;
        }
        .auto-style11 {
            border-right: 1px solid #3366FF;
            border-top: 1px solid #3366FF;
            border-bottom: 1px solid #3366FF;
            border-left: 4px solid #3366FF;
        }
        .auto-style12 {
            border: 1px solid #3366FF;
            background-color: #B3C6FF;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style9" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Ad Soyad: </strong></td>
            <td><strong>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb8"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Mail Adresi:</strong></td>
            <td class="auto-style6"><strong>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb8"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Konu:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mesaj:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style11" Height="103px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" Text="Gönder" Width="166px" CssClass="auto-style12" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
