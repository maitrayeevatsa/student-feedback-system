<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSignup.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="project.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
     .styl
     {
         width: 600px;
         height:auto;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr class="adminlogin">
            <td colspan="3">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                    Text="Admin Sign up" CssClass="heading" Width="600px"></asp:Label>
            </td>
        </tr>
        <tr class="adminrow1">
            <td style="width:300px; text-align:center">
                &nbsp;
                <asp:Label ID="Label5" runat="server" Text="Admin ID" CssClass="label"></asp:Label>
            </td>
            <td style="width:300px; text-align:center">
                <asp:TextBox ID="aid" runat="server"></asp:TextBox>
<br />
                <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="aid" ErrorMessage="Enter valid ID!!" 
                    SetFocusOnError="True" ForeColor="#FFFFCC"></asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                    runat="server" TargetControlID="RequiredFieldValidator3" 
                    HighlightCssClass="required">
                </cc1:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr class="adminrow2">
            <td style="width:300px; text-align:center">
               <br />
                <asp:Label ID="Label1" runat="server" Text="Username" CssClass="label"></asp:Label>
            <br /></td>
            <td style="width:300px; text-align:center">
               <br /> <asp:TextBox ID="uname" runat="server"></asp:TextBox>
             <br />   
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="uname" ErrorMessage="Enter valid Username!!" 
                    SetFocusOnError="True" ForeColor="#FFFFCC" ></asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1" HighlightCssClass="required">
                </cc1:ValidatorCalloutExtender> </td>
        </tr>
        <tr class="adminrow1">
            <td style="width:300px; text-align:center">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Department" CssClass="label"></asp:Label>
            <br /><br />
            </td>
            <td style="width:300px; text-align:center">
              <br />  <asp:DropDownList ID="department" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>AIM &amp; ACT</asp:ListItem>
                    <asp:ListItem>School of Automation</asp:ListItem>
                    <asp:ListItem>Vidhi Mandir</asp:ListItem>
                    <asp:ListItem>Biotech Department</asp:ListItem>
                    <asp:ListItem>School of Commerce &amp; Management</asp:ListItem>
                    <asp:ListItem>Vaani Mandir</asp:ListItem>
                    <asp:ListItem>Department of Geography</asp:ListItem>
                    <asp:ListItem>department of Physics</asp:ListItem>
                </asp:DropDownList>
         <br />   </td>
        </tr>
        <tr class="adminrow2">
            <td style="width:300px; text-align:center">
                <br />;<asp:Label ID="Label3" runat="server" Text="Password" CssClass="label"></asp:Label>
          <br />  </td>
            <td style="width:300px; text-align:center"><br />
               <asp:TextBox ID="password" runat="server" TextMode="Password" 
                    style="margin-left: 0px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="password" ErrorMessage="Enter Correct Password!!" ForeColor="#FFFFCC" 
                    ></asp:RequiredFieldValidator>
                <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2" HighlightCssClass="required">
                </cc1:ValidatorCalloutExtender>
            </td>
        </tr>
        <tr class="adminrow1">
            <td style="width:300px; text-align:center">
                <asp:Button ID="Button1" runat="server" Text="Sign in" 
                    onclick="Button1_Click" CssClass="button" />
                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </cc1:ToolkitScriptManager> 
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

