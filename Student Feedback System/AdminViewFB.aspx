<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminViewFB.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
    {
        width: 717px;
    }
    .style7
    {
        width: 189px;
    }
    .style8
    {
        width: 192px;
    }
    .style9
    {
        width: 179px;
    }
        .style15
        {
            width: 295px;
            height: 52px;
        }
    </style>
    <link href="project.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server"  BackColor="#FFFFCC" ForeColor="#990000" 
                Font-Size="Large" ></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/AdminStuDB.aspx" 
                Text="Student Database" CssClass="button" Width="252px" 
                onclick="Button1_Click" />
        </td>
        <td class="style9" rowspan="2">
            <asp:Button ID="Button2" runat="server" Text="Curriculum Suggestion" 
                Width="234px" PostBackUrl="~/CurriculumDB.aspx" onclick="Button2_Click" 
                CssClass="button" />
        </td>
        <td class="style15">
            <asp:Button ID="Button3" runat="server" style="margin-left: 0px" 
                Text="Management Suggestion" Width="241px" onclick="Button3_Click" 
                PostBackUrl="~/GoverDB.aspx" CssClass="button" />
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Button ID="Button4" runat="server" Text="Infrastructure suggestion" 
                Width="253px" PostBackUrl="~/infradb.aspx" CssClass="button" 
                onclick="Button4_Click" />
        </td>
        <td class="style15">
            <asp:Button ID="Button5" runat="server" Text="Residence Suggestion" 
                PostBackUrl="~/RESidb.aspx" CssClass="button" Width="242px" 
                onclick="Button5_Click" />
        </td>
    </tr>
    <tr><td><br /><br /><asp:Button ID="Button6" runat="server" Text="Log out" 
            CssClass="button" onclick="Button6_Click" /></td>
        
    </tr>
</table>
</asp:Content>

