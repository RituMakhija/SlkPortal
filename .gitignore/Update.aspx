<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="SLKUniversity.Presentation_Layer.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="EnterDetailsStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="position:relative;top:50px;left:500px;" >  
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="UserId"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="UserI" runat="server" Text="" ReadOnly="true" Enabled="false" Height="35px" Width="225px"></asp:TextBox>
                
            </td>
        </tr>     
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="FirstName :"></asp:Label>

            </td>
            <td class="auto-style1">
                <asp:TextBox ID="FirstName" runat="server" Height="35px" Width="225px" placehoder="Enter Your FirstName"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="*Please Enter Your Firstname" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
            </td>
        </tr>       
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="LastName :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="LastName" runat="server" Height="35px" Width="225px" placehoder="Enter Your LastName"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="*Please Enter Your Lastname" ControlToValidate="LastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="PhoneNumber :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="PhoneNumber" runat="server" Height="35px" Width="225px" placehoder="Enter PhoneNumber"></asp:TextBox>
            </td>
             <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" ErrorMessage="*Please Enter Your PhoneNumber" ControlToValidate="PhoneNumber" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="EmailID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Email" runat="server" Text="" ReadOnly="true" Enabled="false" Height="35px" Width="225px"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Address :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="Address" runat="server" Height="35px" Width="225px" placehoder="Enter Address" TextMode="MultiLine"></asp:TextBox>
            </td>
              <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Address" ErrorMessage="*Please Enter Your Address" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="City :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="City" runat="server" Height="35px" Width="225px" placehoder="Enter city"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="City" ErrorMessage="*Please Enter Your City" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="State :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="State" runat="server" Height="35px" Width="225px" placehoder="Enter State"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="State" ErrorMessage="*Please Enter Your State" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label16" runat="server" Text="Country :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="Country" runat="server" Height="35px" Width="225px" placehoder="Enter Country"></asp:TextBox>
            </td>
              <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Country" ErrorMessage="*Please Enter Your Country" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Department :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="Department" runat="server" Width="229px" Height="42px" >
                    <asp:ListItem>Choose Your Department</asp:ListItem>
                    <asp:ListItem>Aeronautical</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                    <asp:ListItem>Electronics & communication</asp:ListItem>
                    <asp:ListItem>Information Science</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Department" ErrorMessage="*Please Enter your department" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
            </td>
            <td >
                <asp:RadioButtonList ID="Gender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="10th Education :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="TenthBoard" runat="server" Height="42px" Width="229px">
                    <asp:ListItem>Choose Your Board </asp:ListItem>
                    <asp:ListItem>State Board</asp:ListItem>
                    <asp:ListItem>CBSE Board</asp:ListItem>
                    <asp:ListItem>ICSE Board</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>                  
                </asp:DropDownList>                   
            </td>
              <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TenthBoard" ErrorMessage="*Please select your 10th board" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="10th Marks"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="TenthMarks" runat="server" placeholder="Enter in Percentage" Height="35px" Width="225px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TenthMarks" ErrorMessage="*Please enter your 10th Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="12th Education :"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="TwelfthBoard" runat="server" Height="42px" Width="229px">
                    <asp:ListItem>Choose Your Board </asp:ListItem>
                    <asp:ListItem>State Board</asp:ListItem>
                    <asp:ListItem>CBSE Board</asp:ListItem>
                    <asp:ListItem>ICSE Board</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>                  
                </asp:DropDownList>                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TwelfthBoard" ErrorMessage="*Please select your 12th board" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="12th Marks"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TwelfthMarks" runat="server" placeholder="Enter in Percentage" Height="35px" Width="225px"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TwelfthMarks" ErrorMessage="*Please enter your 12th Marks" ForeColor="Red"></asp:RequiredFieldValidator>
            </td> 
        </tr>
        <tr>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" Height="35px" Width="110px" OnClick="Button1_Click" />
            </td>
            <td>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Cancel" Height="35px" Width="110px" OnClick="Button2_Click" CausesValidation="false" />
            </td>
        </tr>
    </table>
    <div style="height:150px">

    </div>
</asp:Content>
