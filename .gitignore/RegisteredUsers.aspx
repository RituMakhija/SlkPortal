<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="RegisteredUsers.aspx.cs" Inherits="SLKUniversity.Presentation_Layer.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div style="margin-left:300px;margin-top:100px">
    <asp:GridView ID="GridView1" runat="server" Width="630px" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="4" CellPadding="10" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand"
     OnRowCancelingEdit="GridView1_RowCancelingEdit"  EmptyDataText="No records has been added." AlternatingRowStyle-BackColor="#5981d9" HeaderStyle-ForeColor="white" HeaderStyle-BackColor="#5981d9" ShowFooter="true" Height="201px">     
    <Columns>
        <asp:TemplateField HeaderText="RegNo">
            <ItemTemplate>
              <asp:label ID="regno" runat="server" Text='<%# Eval("SlNo") %>'></asp:label>
            </ItemTemplate> 
             <EditItemTemplate>
                <asp:TextBox ID="reg" runat="server" Text='<%# Eval("SlNo") %>' Enabled="false" />
            </EditItemTemplate>          
            <FooterTemplate>
                <asp:TextBox ID="txtRegNo" runat="server" Enabled="false" />
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UserName">
            <ItemTemplate>
                <asp:Label ID="username" runat="server"><%# Eval("UserName") %></asp:Label>                             
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="uname" runat="server" Text='<%# Eval("UserName") %>' />
                <asp:RequiredFieldValidator ID="rfvuname" runat="server" ErrorMessage="Please enter Username" ControlToValidate="uname"></asp:RequiredFieldValidator>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtUserName" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="EmailID">
            <ItemTemplate>
            <asp:Label ID="EmailI" runat="server" Text='<%# Eval("EmailID") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="eid" runat="server"  Text='<%# Eval("EmailID") %>' Enabled="false"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Password">
            <ItemTemplate>
              <asp:Label ID="password" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="pwd" runat="server"  Text='<%# Eval("Password") %>'/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField>
            <ItemTemplate>                        
                <%--<asp:LinkButton ID="lnkBtnUpd" runat="server" CommandName="UpdateRow" CommandArgument='<%# Eval("EmailID") %>'>Update</asp:LinkButton>--%>
            </ItemTemplate>
                 <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"/>
                 </FooterTemplate>           
                </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkBtnDel" runat="server" CommandName="DeleteRow" OnClientClick="return confirm('Are you sure you want to Delete this Record?');" CommandArgument='<%# Eval("EmailID") %>'>Delete</asp:LinkButton>
            </ItemTemplate>           
        </asp:TemplateField>
        <asp:CommandField ButtonType="Link" ShowEditButton="true" ItemStyle-Width="150" />   
    </Columns>
        <AlternatingRowStyle BackColor="white" />
    <EmptyDataTemplate>
        <tr style="background-color: white;">
            <th scope="col">
                SlNo
            </th>
            <th scope="col">
                UserName
            </th>
            <th scope="col">
                EmailID
            </th>
             <th scope="col">
                Password
            </th>
            <th scope="col">
                    
            </th>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtRegNo" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtEmailID" runat="server" />
            </td>
             <td>
                <asp:TextBox ID="txtPassword" runat="server" />
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"/>
            </td>
        </tr>
    </EmptyDataTemplate>
        </asp:GridView>
    </div>
    <div style="margin-left:600px;">
        <br />
        <br />
    <asp:Button ID="Done" runat="server" Text="Done" Height="36px" Width="125px" OnClick="Button1_Click"  />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:button ID="Cancel" runat="server" Text="Cancel" Height="36px" Width="125px" OnClick="Cancel_Click" />
    </div>
</asp:Content>
