<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rstats.aspx.cs" Inherits="_Default" %>

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
    <table class="styl">
        <tr style="text-align:center; width:700px">
                <asp:Label ID="Label5" runat="server" style="text-align: center" 
                    Text="Rating Statistics" CssClass="heading" BackColor="#FFFFCC" 
                    ForeColor="#990000" width="700px"></asp:Label>
        </tr>
        <tr style="text-align:center; width:700px">
            <td>
           
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [rating], [countraters] FROM [ratetable]"></asp:SqlDataSource>
            </td>
            <td > <br /><br /><br />
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" 
                    IsMapEnabled="False">
                    <Series>
                        <asp:Series ChartType="Bar" Name="Series1" XValueMember="rating" 
                            YValueMembers="countraters">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
        </tr>
        <tr>
        <td colspan="2"> <br />
            <asp:Button ID="Button1" runat="server" Text="Back" PostBackUrl="~/Stats.aspx" BorderStyle="Groove" CssClass="button" />
        </td>
    </tr>
        </table>
</asp:Content>

