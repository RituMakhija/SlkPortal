<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="ShowOfDatabase.aspx.cs" Inherits="SLKUniversity.Presentation_Layer.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">  
    <div style="margin-top:150px;">
        
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BackColor="White"
    AlternatingRowStyle-BackColor="#FAFAFA" HeaderStyle-BackColor="#5981d9" HeaderStyle-ForeColor="white" Height="55px" Width="100%" CellPadding="10" EditRowStyle-HorizontalAlign="Center">
    <Columns>
        <asp:TemplateField HeaderText="UserID">
            <ItemTemplate>
                <%# Eval("UserID") %>
            </ItemTemplate>           
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UserName">
            <ItemTemplate>
                <%# string.Concat(Eval("FirstName"), " ", Eval("LastName")) %>
            </ItemTemplate>           
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <%# Eval("Gender") %>
            </ItemTemplate>          
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email-ID">
            <ItemTemplate>
                <%# Eval("EmailID") %>
            </ItemTemplate>          
        </asp:TemplateField>
        <asp:TemplateField HeaderText="PhoneNumber">
            <ItemTemplate>
                <%# Eval("PhoneNumber") %>
            </ItemTemplate>          
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <%# Eval("Address") %>
            </ItemTemplate>          
        </asp:TemplateField>
         <asp:TemplateField HeaderText="City">
            <ItemTemplate>
                <%# Eval("City") %>
            </ItemTemplate>           
        </asp:TemplateField>
        <asp:TemplateField HeaderText="State">
            <ItemTemplate>
                <%# Eval("State") %>
            </ItemTemplate>          
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Country">
            <ItemTemplate>
                <%# Eval("Country") %>
            </ItemTemplate>           
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Department">
            <ItemTemplate>
                <%# Eval("Department") %>
            </ItemTemplate>           
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tenth Baord">
            <ItemTemplate>
                <%# Eval("TenthBoard") %>
            </ItemTemplate>           
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tenth Marks">
            <ItemTemplate>
                <%# Eval("TenthMarks") %>
            </ItemTemplate>           
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Twelfth Board">
            <ItemTemplate>
                <%# Eval("TwelfthBoard") %>
            </ItemTemplate>           
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Twelfth Marks" >
            <ItemTemplate>
                <%# Eval("TwelfthMarks") %>
            </ItemTemplate>           
        </asp:TemplateField> 
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="Update" runat="server" NavigateUrl="Update.aspx">Update</asp:HyperLink>
            </ItemTemplate>           
        </asp:TemplateField> 
    </Columns>   
</asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Go Back" style="margin-left:630px;margin-top:260px" Width="125px" OnClick="Button1_Click" Height="37px"/>
   </div>
</asp:Content>
