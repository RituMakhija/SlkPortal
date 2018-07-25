<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SLKUniversity.Presentation_Layer.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"> 
    
    <div style="position:relative;top:10px;"> 
        <div style="background-color:white;text-align:right;height:40px;color:black;font-size:20px;background-color:#663189">             
             <asp:HyperLink style="position:relative;top:6px;text-decoration:none" ID="HyperLink2" runat="server" Text="Login" NavigateUrl="LoginPage.aspx" ForeColor="White" ></asp:HyperLink>
             &nbsp;&nbsp;&nbsp;
        </div>       
            <marquee><h1 style="position:relative;left:500px;">Welcome to SLK University</h1></marquee>
            <asp:Image ImageUrl="C:\Users\ritu.makhija\Desktop\slkpic.jpg" runat="server" Width="100%" Height="319%"/>
       
    </div>
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server" />   
        <asp:Timer ID="Timer1" Interval="2000" runat="server" />   
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">   
            <Triggers>   
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />   
            </Triggers>   
            <ContentTemplate>   
                <asp:AdRotator Height="200px" Width="100%" ID="AdRotator2" AdvertisementFile="~/XMLFile1.xml"   
                    runat="server" />   
            </ContentTemplate>   
        </asp:UpdatePanel> 
        </div>  
</asp:Content>
