<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="project.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .styl
        {
            width: 600px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="styl">
    <tr class="adminlogin">
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Text="Admin Login" CssClass="heading" Width="600px"></asp:Label>
            </td>
        </tr>
    <tr class="adminrow1">
        <td style="text-align: center">
            <asp:Label ID="Label2" runat="server" style="text-align: center" 
                            Text="Username" CssClass="label"></asp:Label>
        </td>
        <td style="text-align: center"><br />
            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="172px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" 
                ErrorMessage="User Name is required." ForeColor="#FFFF99"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" 
            TargetControlID="RequiredFieldValidator1" HighlightCssClass="required"/>
        </td>
    </tr>
    <tr class="adminrow2">
        <td style="text-align: center">
            &nbsp;
            <asp:Label ID="Label3" runat="server" style="text-align: center" 
                            Text="Password" CssClass="label"></asp:Label>
        </td>
        <td style="text-align: center">
            <br /><asp:TextBox ID="TextBox2" runat="server" style="text-align: left" 
                Height="26px" TextMode="Password" Width="172px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate= "TextBox2" ErrorMessage="Password is Required." 
                            SetFocusOnError="True" ForeColor="White"></asp:RequiredFieldValidator>
            <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" HighlightCssClass="required" TargetControlID="RequiredFieldValidator2">
            </asp:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td>
                        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                        </asp:ToolkitScriptManager>
                        </td>
        <td style="text-align: right">
            <asp:Button ID="Button2" runat="server" Text="Login" onclick="Button2_Click" 
                CssClass="button" /> <br />
             <asp:Label ID="Label4" runat="server" Text="Username doesnt exist." 
                Visible="False" CssClass="label" BackColor="#FFFFCC" ForeColor="#FF3300"></asp:Label>
        </td>
    </tr>
</table>
<p style="text-align: center"></p>
<asp:Button ID="Button3" runat="server" PostBackUrl="~/AdminSignup.aspx" 
    Text="Sign Up" CssClass="button" />
</asp:Content>

