<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        text-align: right;
    }
        .auto-style13 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style14 {
            text-align: left;
            width: 158px;
        }
        .auto-style15 {
            width: 38px;
        }
        .auto-style16 {
            height: 26px;
        }
        .auto-style17 {
            height: 26px;
            margin-left: 40px;
        }
        .auto-style19 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style21 {
            background-color: #CCCCCC;
        }
        .auto-style22 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style23 {
            margin-right: 0px;
            background-color: #CCCCCC;
        }
        .auto-style24 {
            width: 356px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <div class="auto-style13">
            <table class="auto-style9">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                        </strong></td>
                    <td class="auto-style15">
                        <strong><em>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                        </em></strong>
                    </td>
                    <td><strong>KATEGORİ LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="Kategoriler.aspx?KategoriID=<%# Eval("KategoriID") %>&islem=sil">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/ICONS/delete1.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style12">
                            <a href="KategoriDuzenle.aspx?KategoriID=<%# Eval("KategoriID") %>">
                            <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/ICONS/update1.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style23" Width="450px">
        
            <div class="auto-style13">
                <table class="auto-style9">
                    <tr>
                        <td><strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"/>
                            </strong></td>
                        <td class="auto-style15">
                            <strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Height="30px" OnClick="Button4_Click" Text="-" Width="30px" />
                            </strong>
                        </td>
                        <td class="auto-style24"><strong>KATEGORİ EKLEME</strong></td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style16">KATEGORİ AD:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox1" runat="server" Width="213px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">KATEGORİ İKON:</td>
                <td class="auto-style17">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="212px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button5" runat="server" BorderColor="#6699FF" CssClass="auto-style19" Text="Ekle" Width="100px" OnClick="Button5_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
