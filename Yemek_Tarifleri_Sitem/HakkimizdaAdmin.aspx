<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        margin-left: 40px;
    }
    .auto-style13 {
        font-weight: bold;
    }
    .auto-style14 {
        text-align: center;
        margin-left: 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <div class="auto-style13">
            <table class="auto-style9">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style15"><strong><em>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                        </em></strong></td>
                    <td><strong>HAKKIMIZDA</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Text="Güncelle" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
