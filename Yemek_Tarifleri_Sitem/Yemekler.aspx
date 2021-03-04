<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Yemekler" %>


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
    .auto-style25 {
        height: 39px;
    }
    .auto-style26 {
        width: 38px;
        height: 39px;
    }
        .auto-style27 {
            height: 26px;
            margin-left: 80px;
        }
        .auto-style28 {
            height: 26px;
            margin-left: 40px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <div class="auto-style13">
            <table class="auto-style9">
                <tr>
                    <td class="auto-style25"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style26">
                        <strong><em>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                        </em></strong>
                    </td>
                    <td class="auto-style25"><strong>YEMEK LİSTESİ</strong></td>
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
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="Yemekler.aspx?YemekID=<%# Eval("YemekID") %>&islem=sil">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/ICONS/delete1.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style12">
                            <a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>">
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
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                            </strong>
                        </td>
                        <td class="auto-style24"><strong>YEMEK EKLEME</strong></td>
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
                <td class="auto-style16">YEMEKİ AD:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;MALZEMELER:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">YEMEK TARİFİ:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">KATEGORİ:</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Button5" runat="server" BorderColor="#6699FF" CssClass="auto-style19" OnClick="Button5_Click" Text="Ekle" Width="100px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
