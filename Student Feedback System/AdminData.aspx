<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminData.aspx.cs" Inherits="Default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="project.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style4
    {
        width: 103%;
            height: 461px;
        }
    .style5
    {
        width: 183px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style5">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                GridLines="None" Height="430px" Width="765px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                    <asp:BoundField DataField="username" HeaderText="username" 
                        SortExpression="username" ControlStyle-CssClass="style4" />
                    <asp:BoundField DataField="department" HeaderText="department" 
                        SortExpression="department" />
                    <asp:BoundField DataField="password" HeaderText="password" 
                        SortExpression="password" />
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
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style5">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AdminConnectionString %>" 
                SelectCommand="SELECT [id], [username], [department], [password] FROM [AdminRegist]">
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

