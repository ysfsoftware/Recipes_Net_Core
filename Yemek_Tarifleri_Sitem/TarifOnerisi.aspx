<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOnerisi.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOnerisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            height: 28px;
            text-align: right;
        }
        .auto-style7 {
            width: 321px;
        }
        .auto-style8 {
            height: 28px;
            width: 321px;
        }
        .auto-style9 {
            font-weight: bold;
            font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif Ad:</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtbxTarifAd" runat="server" Width="250px" CssClass="tb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler:</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtbxMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Yapılış:</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtbxYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Resim:</strong></td>
            <td class="auto-style7">
                <asp:FileUpload ID="fileuploadResim" runat="server" Width="250px" CssClass="tb8" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtbxTarifOneren" runat="server" Width="250px" CssClass="tb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mail Adresi:</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtbxMail" runat="server" TextMode="Email" Width="250px" CssClass="tb8"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8"><em>
                <asp:Button ID="btnTarifOner" runat="server" BackColor="#669999" CssClass="fb9" Height="40px" Text="Tarif Öner" Width="162px" OnClick="btnTarifOner_Click"/>
                </em></td>
        </tr>
    </table>
</asp:Content>
