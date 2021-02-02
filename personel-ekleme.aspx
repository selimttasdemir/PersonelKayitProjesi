<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="personel-ekleme.aspx.cs" Inherits="PersonelKayıtProjesi.personel_ekleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 150px;
        height: 150px;
    }
        .auto-style7 {
            width: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    <asp:Label ID="Label1" runat="server" Text="TC Kimlik NO:"></asp:Label>
    &nbsp;<asp:TextBox ID="txtTC" runat="server" Height="25px" MaxLength="11" Width="150px"></asp:TextBox>
    <img alt="" class="auto-style6" src="" /></p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Ad:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAd" runat="server" Height="25px" MaxLength="11" Width="150px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Button2" type="button" value="ekle" class="auto-style7" /></p>
<p>
    <asp:Label ID="Label3" runat="server" Text="Soyad:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtSoyad" runat="server" Height="25px" MaxLength="11" Width="150px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label4" runat="server" Text="Meslek/Ünvan:"></asp:Label>
    <asp:TextBox ID="txtMeslek" runat="server" Height="25px" MaxLength="11" Width="150px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label5" runat="server" Text="Telefon:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtTelefon" runat="server" Height="25px" MaxLength="11" Width="150px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label6" runat="server" Text="E-Mail:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtMail" runat="server" Height="25px" MaxLength="11" Width="150px"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label7" runat="server" Text="Adres:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAdres" runat="server" Height="25px" MaxLength="11" Width="150px"></asp:TextBox>
</p>
<p>
    &nbsp;</p>
<p>
</p>
</asp:Content>
