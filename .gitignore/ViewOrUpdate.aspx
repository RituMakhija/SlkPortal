<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="ViewOrUpdate.aspx.cs" Inherits="SLKUniversity.Presentation_Layer.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="font-size:30px;margin-left:630px;margin-top:120px">
    <asp:HyperLink ID="HyperLink1" runat="server" Text="ViewData" NavigateUrl="ShowOfDatabase.aspx"></asp:HyperLink>   
    </div> 
     <asp:Button ID="Button1" runat="server" Text="Logout" Height="36px" style="margin-left:630px;margin-top:200px" Width="100px" OnClick="Button1_Click" />
   
</asp:Content>
