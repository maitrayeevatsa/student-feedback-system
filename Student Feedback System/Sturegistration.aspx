<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sturegistration.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="project.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .styl
    {
        width:700px;
        height:auto;
    }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <script type ="text/javascript" >
        function validation()
        {
        var y= /(\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*)/;
        var y1= document.getElementById("<%= Emailid.ClientID%>").value();
        var matcharray= y1.match(y);
        if(matcharray == null)
          {
            alert("Email Invalid");
            document.getElementById("<%= Emailid.ClientID%>").focus();
            return false;
          }
     
        return true;
        }
        </script>
    <table class="styl">
    <tr class="stulogin" style="width:700px">
        <td colspan="2" style="text-align: center">
            <asp:Label ID="Label1" runat="server" Font-Bold="True"  width="700px"
                Font-Underline="True" Text="Registration Form" CssClass="heading"></asp:Label>
            <br />
        </td>
    </tr>
    <tr>
        <td >
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr class="stuid">
        <td>
            <asp:Label ID="Label3" runat="server" Text="Student ID :" CssClass="label"></asp:Label>
            
        </td>
        <td>
            <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:TextBox ID="IDid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="IDid" ErrorMessage="Enter Valid Student ID!!" 
                ForeColor="#CCFFFF"></asp:RequiredFieldValidator>
            <cc1:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1" HighlightCssClass="required">
            </cc1:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr class="stupass">
        <td>
            <asp:Label ID="Label4" runat="server" Text="Student Name :" CssClass="label"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Studentid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="StudentValidator" runat="server" 
                ControlToValidate="Studentid" ErrorMessage="Enter your name!!" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="stuid">
        <td>
            <asp:Label ID="Label5" runat="server" Text="Department :" CssClass="label"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                AutoPostBack="True">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="DepartmentValidator" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="*Required Field" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="stupass">
        <td>
            <asp:Label ID="Label6" runat="server" Text="Course :" CssClass="label"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="CourseValidator" runat="server" 
                ControlToValidate="DropDownList2" ErrorMessage="*Required Field" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="stuid">
        <td>
            <asp:Label ID="Label7" runat="server" Text="Mobile no. :" CssClass="label"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Mobileid" runat="server" ontextchanged="Mobileid_TextChanged" 
                style="height: 22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="MobileValidator1" runat="server" 
                ControlToValidate="Mobileid" ErrorMessage="*Required field" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ControlToValidate="Mobileid" ErrorMessage="10 digit!!!" 
                MaximumValue="9999999999" MinimumValue="1111111111"></asp:RangeValidator>
        </td>
    </tr>
    <tr class="stupass">
        <td>
            <asp:Label ID="Label8" runat="server" Text="Date of joining :" CssClass="label" 
                Width="200px"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="DOJid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="DOJValidator" runat="server" 
                ControlToValidate="DOJid" ErrorMessage="*Required Field" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="DOJid" Type= "Date"
                ErrorMessage="date!! date!! date!!" MaximumValue="2019/1/30" 
                MinimumValue="2015/1/30"></asp:RangeValidator>
        </td>
    </tr>
    <tr class="stuid">
        <td>
            <asp:Label ID="Label9" runat="server" Text="E-mail :" CssClass="label"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Emailid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="EmailValidator" runat="server" 
                ControlToValidate="Emailid" ErrorMessage="* Enter valid Email ID!!" 
                SetFocusOnError="True" ForeColor="#CCFFFF"></asp:RequiredFieldValidator>
            <cc1:ValidatorCalloutExtender ID="EmailValidator_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="EmailValidator" HighlightCssClass="required">
            </cc1:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr class="stupass">
        <td>
            <asp:Label ID="Label10" runat="server" Text="Password :" CssClass="label"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Passwordid" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" 
                ControlToValidate="Passwordid" ErrorMessage="Enter valid Password!!" 
                SetFocusOnError="True" ForeColor="White"></asp:RequiredFieldValidator>
            <cc1:ValidatorCalloutExtender ID="PasswordValidator_ValidatorCalloutExtender" 
                runat="server" Enabled="True" HighlightCssClass="required" 
                TargetControlID="PasswordValidator">
            </cc1:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td>
            </td>
        <td >
            </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Label12" runat="server" BackColor="#66FFFF" CssClass="label" 
                ForeColor="#003399" /></td>
        <td>
            <asp:Button ID="Subbutton" runat="server" Text="Submit" 
                onclick="Subbutton_Click" CssClass="button" />
            <cc1:HoverMenuExtender ID="HoverMenuExtender1" runat="server" 
                PopupControlID="Label16" PopupPosition="Bottom" Enabled="True" 
                TargetControlID="Subbutton">
          </cc1:HoverMenuExtender> <br />  
            <asp:Label 
                  ID="Label16" runat="server" Text="Are You Sure You Want To Submit " 
                CssClass="question" ForeColor="#FFCC99" Font-Bold="True" 
                Font-Size="Large" ></asp:Label>
<br /><br />
<asp:Button ID="resetbutton" runat="server" Text="Reset" 
                onclick="resetbutton_Click" CssClass="button" />
        </td>
    </tr>
</table>
</asp:Content>

