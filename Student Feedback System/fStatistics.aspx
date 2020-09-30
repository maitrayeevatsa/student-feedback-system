<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="fStatistics.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="project.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .styl
        {
            width: 700px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringC %>" 
        SelectCommand="SELECT [question], [average] FROM [infragraph]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringC %>" 
        SelectCommand="SELECT [average], [question] FROM [CurrGraph]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringC %>" 
        SelectCommand="SELECT [question], [average] FROM [managegraph]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionStringC %>" 
        SelectCommand="SELECT [question], [average] FROM [resigraph]">
    </asp:SqlDataSource>
</p>
<table class="styl">
    <tr style="text-align: center">
    <asp:Label ID="Label5" runat="server" style="text-align: center" 
                    Text="Statistics" CssClass="heading" BackColor="#FFFFCC" 
                    ForeColor="#990000"></asp:Label>
    </tr>
    <tr>
        <td> <br />
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" 
                onload="Chart1_Load">
                <Series>
                    <asp:Series Name="Series1" XValueMember="question" YValueMembers="average">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Infrastructure" CssClass="label" 
                ForeColor="#CCFFFF" BackColor="#000066"/>
        <br /> </td>
        <td> <br />
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" 
                onload="Chart2_Load">
                <Series>
                    <asp:Series Name="Series1" XValueMember="question" YValueMembers="average">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        <br />
            <asp:Label ID="Label2" runat="server" Text="Curriculum & Teaching" CssClass="label" 
            BackColor="#000066" ForeColor="#CCFFFF"/>
        <br /> </td>
    </tr>
    <tr>
        <td> <br />
            <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3">
                <Series>
                    <asp:Series Name="Series1" XValueMember="question" YValueMembers="average">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Governance & Management" CssClass="label"
            BackColor="#000066" ForeColor="#CCFFFF"/>
            <br />
        </td>
        <td> <br />
            <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4">
                <Series>
                    <asp:Series Name="Series1" XValueMember="question" YValueMembers="average">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
         <br />
            <asp:Label ID="Label4" runat="server" Text="Residence" CssClass="label"
            BackColor="#000066" ForeColor="#CCFFFF"/>
         <br /></td>
    </tr>
    <tr>
        <td colspan="2"> <br />
            <asp:Button ID="Button1" runat="server" Text="Back" PostBackUrl="~/Stats.aspx" 
                BorderStyle="Groove" CssClass="button" />
        </td>
    </tr>
</table>

</asp:Content>

