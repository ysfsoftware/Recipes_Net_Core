<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            height: 18px;
        }
        .auto-style13 {
            height: 18px;
            margin-left: 40px;
        }
        .auto-style14 {
            font-weight: bold;
        }
        .auto-style15 {
            height: 18px;
            text-align: left;
            margin-left: 40px;
        }
        .auto-style16 {
            height: 18px;
            text-align: right;
        }
        .auto-style17 {
            text-align: right;
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
            <td class="auto-style17"><strong>KATEGORİ AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>&nbsp;ADET:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>RESİM:</strong></td>
            <td class="auto-style15">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style14" OnClick="Button1_Click" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
