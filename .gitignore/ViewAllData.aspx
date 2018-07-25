<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation_Layer/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAllData.aspx.cs" Inherits="SLKUniversity.Presentation_Layer.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div style="margin-left:5px;margin-top:100px;">
         Search:
         <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged" />
         <asp:Button ID="btnSearch" Text="Search" runat="server" OnClick="btnSearch_Click"/>
         <hr />
         <br />
         
    <asp:GridView ID="GV" runat="server" Width="1098px" AutoGenerateColumns="false" AllowPaging="true" PageSize="4" OnPageIndexChanging="GV_PageIndexChanging" OnRowDeleting="GV_RowDeleting" CellPadding="10" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand" 
     OnRowCancelingEdit="GridView1_RowCancelingEdit" EmptyDataText="No records has been added." AlternatingRowStyle-BackColor="#5981d9" HeaderStyle-ForeColor="white" HeaderStyle-BackColor="#5981d9" ShowFooter="true" Height="174px">     
    <Columns>
        <asp:TemplateField HeaderText="User ID">
            <ItemTemplate>
              <asp:label ID="UserId" runat="server" Text='<%# Eval("UserId") %>'></asp:label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="uid" runat="server" Text='<%# Eval("UserId") %>' Enabled="false" Width="30px"></asp:TextBox>             
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtUserID" runat="server" Enabled="false" Width="30px"/>
            </FooterTemplate>
        </asp:TemplateField> 
        <asp:TemplateField HeaderText="First Name">
            <ItemTemplate>
                <asp:Label ID="firstname" runat="server"><%# Eval("FirstName") %></asp:Label>             
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="fname" runat="server" Text='<%# Eval("FirstName") %>' Width="50px"/>               
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtFirstName" runat="server" Width="50px" />
            </FooterTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Last Name">
            <ItemTemplate>
                <asp:Label ID="lastname" runat="server"><%# Eval("LastName") %></asp:Label>             
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="lname" runat="server" Text='<%# Eval("LastName") %>' Width="50px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtLastName" runat="server" Width="50px"/>
            </FooterTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Phone Number">
            <ItemTemplate>
                <asp:Label ID="phonenumber" runat="server"><%# Eval("PhoneNumber") %></asp:Label>             
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="phoneno" runat="server" Text='<%# Eval("PhoneNumber") %>' Width="60px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtPhoneNumber" runat="server" Width="60px" />
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="EmailID">
            <ItemTemplate>
            <asp:Label ID="Email" runat="server" Text='<%# Eval("EmailID") %>' Enabled="false"></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="emid" runat="server"  Text='<%# Eval("EmailID") %>' Enabled="false" Width="90px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtEmailI" runat="server" Width="90px"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
              <asp:Label ID="Address" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="addr" runat="server"  Text='<%# Eval("Address") %>' Width="90px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtAddress" runat="server" Width="90px"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="City">
            <ItemTemplate>
            <asp:Label ID="City" runat="server" Text='<%# Eval("City") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="cit" runat="server"  Text='<%# Eval("City") %>' Width="60px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtCity" runat="server"  Width="60px"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="State">
            <ItemTemplate>
              <asp:Label ID="State" runat="server" Text='<%# Eval("State") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="stat" runat="server"  Text='<%# Eval("State") %>' Width="60px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtState" runat="server"  Width="60px"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
         <asp:TemplateField HeaderText="Country">
            <ItemTemplate>
            <asp:Label ID="Country" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="coun" runat="server"  Text='<%# Eval("Country") %>' Width="60px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtCountry" runat="server" Width="60px"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Department">
            <ItemTemplate>
              <asp:Label ID="Department" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                 <%--<asp:DropDownList ID="dept" runat="server" Width="70px">
                   <asp:ListItem>Choose Your Department</asp:ListItem>
                    <asp:ListItem>Aeronautical</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>ComputerScience</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                    <asp:ListItem>Electronics & communication</asp:ListItem>
                    <asp:ListItem>InformationScience</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>--%>
                 <asp:TextBox ID="dept" runat="server" Text='<%# Eval("Department") %>' Width="70px"></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:DropDownList ID="txtDepartment" runat="server" Width="70px">
                   <asp:ListItem>Choose Your Department</asp:ListItem>
                    <asp:ListItem>Aeronautical</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>ComputerScience</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                    <asp:ListItem>Electronics & communication</asp:ListItem>
                    <asp:ListItem>InformationScience</asp:ListItem>
                    <asp:ListItem>Mechanical</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <%--<asp:TextBox ID="txtDepartment" runat="server"  Width="70px"></asp:TextBox>--%>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
              <asp:Label ID="Gender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>              
                   <%--<asp:DropDownList ID="gen" runat="server" Width="50px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>--%>
                 <asp:TextBox ID="gen" runat="server" Text='<%# Eval("Gender") %>' Width="50px"></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:DropDownList ID="txtGender" runat="server" Width="50px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <%--<asp:TextBox ID="txtGender" runat="server"  Width="50px"></asp:TextBox>--%>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tenth Board">
            <ItemTemplate>
              <asp:Label ID="TenthBoard" runat="server" Text='<%# Eval("TenthBoard") %>' Width="50px"></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>             
                 <%-- <asp:DropDownList ID="tenb" runat="server" Width="50px">
                     <asp:ListItem>Choose Your Board </asp:ListItem>
                    <asp:ListItem>State Board</asp:ListItem>
                    <asp:ListItem>CBSE Board</asp:ListItem>
                    <asp:ListItem>ICSE Board</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>           
                </asp:DropDownList>--%>
                 <asp:TextBox ID="tenb" runat="server" Text='<%# Eval("TenthBoard") %>' Width="50px"></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:DropDownList ID="txtTenthBoard" runat="server" Width="50px">
                     <asp:ListItem>Choose Your Board </asp:ListItem>
                    <asp:ListItem>State Board</asp:ListItem>
                    <asp:ListItem>CBSE Board</asp:ListItem>
                    <asp:ListItem>ICSE Board</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>           
                </asp:DropDownList>
                <%--<asp:TextBox ID="txtTenthBoard" runat="server"  Width="50px"></asp:TextBox>--%>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tenth Marks">
            <ItemTemplate>
              <asp:Label ID="TenthMarks" runat="server" Text='<%# Eval("TenthMarks") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="tenm" runat="server"  Text='<%# Eval("TenthMarks") %>' Width="30px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtTenthMarks" runat="server"  Width="30px"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Twelfth Board">
            <ItemTemplate>
              <asp:Label ID="TwelfthBoard" runat="server" Text='<%# Eval("TwelfthBoard") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>               
                 <%--<asp:DropDownList ID="twelb" runat="server" Width="50px">
                    <asp:ListItem>Choose Your Board </asp:ListItem>
                    <asp:ListItem>State Board</asp:ListItem>
                    <asp:ListItem>CBSE Board</asp:ListItem>
                    <asp:ListItem>ICSE Board</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>       
                </asp:DropDownList>--%>
                 <asp:TextBox ID="twelb" runat="server" Text='<%# Eval("TwelfthBoard") %>' Width="50px"></asp:TextBox>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:DropDownList ID="txtTwelfthBoard" runat="server" Width="50px">
                    <asp:ListItem>Choose Your Board </asp:ListItem>
                    <asp:ListItem>State Board</asp:ListItem>
                    <asp:ListItem>CBSE Board</asp:ListItem>
                    <asp:ListItem>ICSE Board</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>       
                </asp:DropDownList>
                 <%-- <asp:TextBox ID="txtTwelfthBoard" runat="server"  Width="50px"></asp:TextBox>--%>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Twelfth Marks">
            <ItemTemplate>
              <asp:Label ID="TwelfthMarks" runat="server" Text='<%# Eval("TwelfthMarks") %>'></asp:Label>
            </ItemTemplate>
             <EditItemTemplate>
                <asp:TextBox ID="twelm" runat="server"  Text='<%# Eval("TwelfthMarks") %>' Width="30px"/>
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtTwelfthMarks" runat="server"  Width="30px"></asp:TextBox>
            </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField>
            <ItemTemplate>                                        
                <asp:LinkButton ID="lnkBtnDel" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to Delete this Record?');" CommandArgument='<%# Eval("EmailID") %>'>Delete</asp:LinkButton>                
            </ItemTemplate>
                 <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"/>
                 </FooterTemplate>           
                </asp:TemplateField>                            
        <asp:CommandField ButtonType="Link" ShowEditButton="true" ItemStyle-Width="150" />   
    </Columns>
        <AlternatingRowStyle BackColor="white" />
    <EmptyDataTemplate>
        <tr style="background-color:#5981d9;color:white;">
            <th scope="col">
                User Id
            </th>
            <th scope="col">
                First Name
            </th>
             <th scope="col">
                Last Name
            </th>
            <th scope="col">
                Phone Number
            </th>
            <th scope="col">
                EmailID
            </th>
             <th scope="col">
                Address
            </th>
             <th scope="col">
                City
            </th>
             <th scope="col">
                State
            </th>
             <th scope="col">
                Country
            </th>
             <th scope="col">
                Department
            </th>
             <th scope="col">
                Gender
            </th>
            <th scope="col">
                Tenth Board
            </th>
             <th scope="col">
                Tenth Marks
            </th>
            <th scope="col">
                Twelfth Board
            </th>
             <th scope="col">
                Twelfth Marks
            </th>
            <th scope="col">
                    
            </th>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtUserId" runat="server" Width="30px"/>
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"  Width="50px"/>
            </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"  Width="50px"/>
            </td>
            <td>
                <asp:TextBox ID="txtPhoneNumber" runat="server"  Width="60px"/>
            </td>
            <td>
                <asp:TextBox ID="txtEmailI" runat="server"  Width="90px"/>
            </td>
             <td>
                <asp:TextBox ID="txtAddress" runat="server"  Width="90px"/>
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"  Width="60px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtState" runat="server"  Width="60px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtCountry" runat="server"  Width="60px"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="txtDepartment" runat="server" Width="70px">
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
                <%--<asp:TextBox ID="txtDepartment" runat="server"  Width="70px"></asp:TextBox>--%>
            </td>
            <td>
                 <asp:DropDownList ID="txtGender" runat="server" Width="50px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <%--<asp:TextBox ID="txtGender" runat="server"  Width="50px"></asp:TextBox>--%>
            </td>
            <td>
                <asp:DropDownList ID="txtTenthBoard" runat="server">
                    <asp:ListItem>Choose Your Board </asp:ListItem>
                    <asp:ListItem>State Board</asp:ListItem>
                    <asp:ListItem>CBSE Board</asp:ListItem>
                    <asp:ListItem>ICSE Board</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem> 
                </asp:DropDownList>
                <%--<asp:TextBox ID="txtTenthBoard" runat="server"  Width="50px"></asp:TextBox>--%>
            </td>
            <td>
                <asp:TextBox ID="txtTenthMarks" runat="server"  Width="30px"></asp:TextBox>
            </td>
            <td>
                 <asp:DropDownList ID="txtTwelfthBoard" runat="server" Width="50px">
                    <asp:ListItem>Choose Your Board </asp:ListItem>
                    <asp:ListItem>State Board</asp:ListItem>
                    <asp:ListItem>CBSE Board</asp:ListItem>
                    <asp:ListItem>ICSE Board</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem> 
                </asp:DropDownList>
                <%--<asp:TextBox ID="txtTwelfthBoard" runat="server"  Width="50px"></asp:TextBox>--%>
            </td>
            <td>
                <asp:TextBox ID="txtTwelfthMarks" runat="server"  Width="30px"></asp:TextBox>
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
    <asp:Button ID="Back" runat="server" Text="Back" Height="36px" Width="125px" OnClick="Done_Click" />
    </div>
</asp:Content>