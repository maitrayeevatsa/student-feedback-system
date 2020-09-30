<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback1.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="project.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .style10
        {
            width: 750px;
            height: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table class="style10">
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </cc1:ToolkitScriptManager>
        <tr class="stulogin">
                    <td colspan="2" style="text-align: center">
                          <br />
                        <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" 
                              CssClass="heading"></asp:Label>
                        <br/><br/></td>
                </tr>
                <tr class="stuid">
                    <td style="text-align: center">
                        <asp:Label ID="Label2" runat="server"  
                            Text="Student id" CssClass="label"></asp:Label>
                    </td>
                    <td style="text-align: center">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Enter valid Username!!." 
                            ToolTip="User Name is required." ForeColor="#66CCFF"></asp:RequiredFieldValidator>
   
                        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server"
                         highlightcssclass="required" TargetControlID="RequiredFieldValidator1">
                        </cc1:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr class="stupass" >
                    <td style="text-align: center">
                        <asp:Label ID="Label3" runat="server"  
                            Text="Password" CssClass="label"></asp:Label>
                    </td>
                    <td style="text-align: center">
                        <asp:TextBox ID="TextBox2" runat="server" 
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate= "TextBox2" ErrorMessage="Enter Valid Password!!." 
                            SetFocusOnError="True" ForeColor="Black"></asp:RequiredFieldValidator>
                        <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server"
                        highlightcssclass="required" TargetControlID="RequiredFieldValidator2">
                        </cc1:ValidatorCalloutExtender>
                    </td>
                </tr>
                <tr>
                    <td class="style17">
                        </td>
                    <td style="text-align: right">
                        <asp:Button ID="Button2" runat="server" Text="Login" onclick="Button2_Click" 
                            CssClass="button" />
                    <br />
                        <asp:Label ID="Label4" runat="server" Text="ID doesn't exist." Visible="False" 
                            CssClass="label" BackColor="#000099" ForeColor="#CCFFFF"></asp:Label>
                    </td>
                </tr>
            </table>
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Sign up" PostBackUrl="~/Sturegistration.aspx" CssClass="button" />
        &nbsp;</p>
    </asp:Content>

