<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RateUs.aspx.cs" Inherits="Default3" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajax" %>

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
    <tr>
    <td></td>
    <td><center>
        <asp:Label ID="Label16" runat="server" 
            Font-Bold="True" 
                Font-Underline="True" 
                Font-Overline="False"  Font-Strikeout="False"  
            Text="RATE US" CssClass="heading" ForeColor="#FFFF99"></asp:Label></center></td>
    <td></td>
    </tr>
    <tr>
    <td rowspan="2">
    <ajax:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </ajax:ToolkitScriptManager>
        </td>
    <td rowspan="2">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div style="float:left; width:256px;">
        
        <br />
        <br />
         <ajax:Rating ID="Rating1" runat="server" CurrentRating="3" 
                    MaxRating="5" StarCssClass="ratingstar" FilledStarCssClass="starfilled" 
                    WaitingStarCssClass="starwaiting" EmptyStarCssClass="starempty" 
                    onchanged="Rating1_Changed">
                </ajax:Rating> 
            <br /> <br />
          </div> <div>
            <br /><br />
                <br /><br />
            </div> </ContentTemplate>
        </asp:UpdatePanel>
    </td>
    <td></td>
    </tr>
    <tr>
    <td>
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    CssClass="button" /></td>
    </tr>
    <tr>
    <td>&nbsp;</td>
    <td></td>
    <td >
    <asp:Label ID="Label1" runat="server" ForeColor="#00CCFF" 
            CssClass="label"></asp:Label>
            </td>
    </tr>
    </table>
</asp:Content>

