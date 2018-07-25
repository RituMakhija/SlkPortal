<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SLKUniversity.Presentation_Layer.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="LoginPageStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="tag">
         <br />
         <asp:Label ID="Label1" runat="server" Text="UserId : "></asp:Label> &nbsp;
         <asp:TextBox ID="name" runat="server" Height="26px" Width="200px" placeholder="Enter Email ID" style="margin-left: 30px"></asp:TextBox>             
     </div> 
       
     <div class="tag">
        <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label> &nbsp;&nbsp;
        <asp:TextBox ID="password" runat="server" TextMode="Password" Height="26px" placeholder="Enter Password" style="margin-left: 1px" Width="200px" ></asp:TextBox>
     </div>
     <div class="tag">       
       <asp:Button ID="login" runat="server" Text="Login" Height="34px" style="margin-left: 0px" Width="96px" OnClick="login_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="cancel" runat="server" Text="Cancel" Height="34px" Width="96px" OnClick="cancel_Click" />
    </div>   
    <div id="href">
        <p style="color:black;">Not a member yet?</p>
         <asp:HyperLink ID="HyperLink1" runat="server" Text="Sign Up" NavigateUrl="RegistrationPage.aspx"></asp:HyperLink>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text=" " ForeColor="black"></asp:Label>
     </div>  
</asp:Content>
