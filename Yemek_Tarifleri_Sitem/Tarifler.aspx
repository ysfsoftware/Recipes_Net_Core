<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21" Height="36px">
        <div class="auto-style13">
            <table class="auto-style9">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style15"><strong><em>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                        </em></strong></td>
                    <td><strong>ONAYSIZ TARİFLİSTESİ</strong></td>
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
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                           <a href="TarifOnerDetay.aspx?TarifID=<%# Eval("TarifID") %>">
                            <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/ICONS/kisspng-electricity-management-business-engineering-5adbf895e057c1.0302845115243654619189.jpg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style21" Height="36px">
        <div class="auto-style13">
            <table class="auto-style9">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style22" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                        </strong></td>
                    <td class="auto-style15"><strong><em>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style22" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                        </em></strong></td>
                    <td><strong>ONAYLI TARİF LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                           <a href="TarifOnerDetay.aspx?TarifID=<%# Eval("TarifID") %>">
                            <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/ICONS/kisspng-electricity-management-business-engineering-5adbf895e057c1.0302845115243654619189.jpg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
