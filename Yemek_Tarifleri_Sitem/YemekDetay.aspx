<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
            color: #6600FF;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            font-size: xx-small;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            margin-left: 40px;
        }
        .auto-style11 {
            text-align: center;
            background-color:#c989e5;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style9" style="border-width: thin">
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <p class="auto-style10">
        <br />
        </p>
        <div class="auto-style11">Yorum Yapma Paneli</div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style6">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Ad Soyad:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Mail:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">Yorumunuz:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="YorumYap" CssClass="auto-style13" OnClick="Button1_Click" Width="201px" />
                    </td>
                </tr>
            </table>
    </asp:Panel>
    </strong>
</asp:Content>

