<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Mail:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">İçerik:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="127px" TextMode="MultiLine" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Yemek:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" OnClick="Button1_Click" Text="ONAYLA" Width="130px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
