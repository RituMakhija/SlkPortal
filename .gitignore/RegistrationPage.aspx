<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="SLKUniversity.Presentation_Layer.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="RegistrationPageStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table id="tablecontent" style="position:relative;top:100px;left:500px;">
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="UserName :"></asp:Label></td>
            <td><asp:TextBox ID="UserName" runat="server" placeholder="UserName" Height="31px" Width="200px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please Enter Your Name" ControlToValidate="UserName" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="EmailId :"></asp:Label></td>
            <td><asp:TextBox ID="EmailId" runat="server" placeholder="Email ID" Height="31px" Width="200px"></asp:TextBox></td> 
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please Enter Your Email-ID" ControlToValidate="EmailId" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Wrong Format(eg: abc@gmail.com\in)" ForeColor="Red" ControlToValidate="EmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>  
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label></td>
            <td><asp:TextBox ID="Password" runat="server" placeholder="Password" Height="31px" Width="200px" TextMode="Password"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Please Enter Desired Password" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator></td>          
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Confirm Password :"></asp:Label></td>
            <td> <asp:TextBox ID="ConfirmPassword" runat="server" placeholder="Confirm Password" Height="31px" Width="200px" TextMode="Password"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Please Enter the same password" ControlToValidate="ConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Password Incorrect" ControlToValidate="ConfirmPassword" ControlToCompare="Password" ForeColor="Red"></asp:CompareValidator></td>
        </tr>
        <tr>
            
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Register" Height="33px" Width="121px" OnClick="Button1_Click" /></td>
             <td>
                 <br />
                 <asp:Button ID="Button2" runat="server" Text="Cancel" Height="33px" Width="120px" OnClick="Button2_Click" CausesValidation="false" /></td>
        </tr>
    </table>
</asp:Content>
