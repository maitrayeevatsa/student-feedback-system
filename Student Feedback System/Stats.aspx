<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stats.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .styl
        {
            width:750px;
        }
    </style><link rel="stylesheet" type="text/css" href="project.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="styl">
    <tr style="text-align:center; width:700px; height:auto">
       <td style="text-align:center; width:700px;" colspan="2">
       <asp:Label ID="Label1" runat="server" Text="Statistics" CssClass="heading"
         ForeColor="#FFFFCC"></asp:Label></td> 
    </tr>
    <tr style="text-align:center; width:700px; height:auto">
       <td style="text-align:center; width:700px;"> <br /><br /><br /> <asp:Button ID="Button1" runat="server" Text="Feedback Statistics"
             PostBackUrl="~/fStatistics.aspx" CssClass="button" /></td> 
       <td style="text-align:center; width:700px;"> <br /><br /><br /> <asp:Button ID="Button2" runat="server" Text="Rating Statistics"
             PostBackUrl="~/rStats.aspx" CssClass="button" /></td> 
    </tr>
</table>
</asp:Content>

