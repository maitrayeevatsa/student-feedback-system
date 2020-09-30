<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminStuDB.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 195px;
        }
        .style6
        {
            height: 61px;
        }
    </style>
    <link href="project.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr class="stulogin">
            <td colspan="3" class="style6">
                <center style="height: 59px; width: 699px"><asp:Label ID="Label16" runat="server" Text="Student Database" 
                       CssClass="heading"></asp:Label></center> 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="stulogin">
                &nbsp;</td>
            <td class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" Height="285px" Width="680px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="studentid" HeaderText="studentid" 
                            SortExpression="studentid" />
                        <asp:BoundField DataField="studentname" HeaderText="studentname" 
                            SortExpression="studentname" />
                        <asp:BoundField DataField="department" HeaderText="department" 
                            SortExpression="department" />
                        <asp:BoundField DataField="course" HeaderText="course" 
                            SortExpression="course" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
                        <asp:BoundField DataField="doj" HeaderText="doj" SortExpression="doj" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td class="stulogin">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:StuRegiConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [studentid], [studentname], [department], [course], [mobile], [doj], [email] FROM [sregist]">
                </asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="log out" CssClass="button" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

