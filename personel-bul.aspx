<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="personel-bul.aspx.cs" Inherits="PersonelKayıtProjesi.personel_bul" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="PERSONEL KİMLİK:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="131px"></asp:TextBox>
    <br />
    <asp:Button ID="Button2" runat="server" Height="36px" Text="Getir" Width="70px" />
</asp:Content>
