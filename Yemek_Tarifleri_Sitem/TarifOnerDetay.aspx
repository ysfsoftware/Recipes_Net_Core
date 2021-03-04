<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            text-align: center;
            width: 446px;
        }
        .auto-style13 {
            height: 27px;
        }
        .auto-style14 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style12">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Adı:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Malzemeler:</strong></td>
            <td><strong>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style14" Height="20px" Width="200px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tarif Resim:</strong></td>
            <td class="auto-style13">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="200px" />
            </td>
        </tr>
        <tr>
            <td><strong>Tarif Öneren:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Mail:</strong></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Text="Onayla" Width="201px" OnClick="Button1_Click1"  />
                </strong></td>
        </tr>
    </table>
</asp:Content>
