<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedbackinfo.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
        }
        .collapsepanelheader
        {
            width: 800px;
            height: 80px;
            color:Maroon;
            background-color:transparent;
            font-weight:bold;
            float:left;
            padding:5px;
            cursor:pointer;
            vertical-align:middle;
        }
    </style><link rel="stylesheet" type="text/css" href="project.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style13">
        <tr>
            <td>
                <asp:Label ID="Label16" runat="server" Font-Size="XX-Large" ForeColor="White" 
                    TabIndex="1" Text="Why your Feedback is important??" BackColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                      <asp:Label ID="Label17" runat="server" Font-Size="Large" ForeColor="#CC0000" 
                    
                          Text="Feedback has been empiricly established as the single biggest driver of improvment. It helps you to understand the system of your university &amp; clear guidance on how to improve it. Your views, opinions holds a great significance in overall development of this institution.  So please encourage your other collegemates also to give feedback .Effective feedback ,both positive and negative is very useful to make important decisions.For us 'continous improvement' is not just a showy catchphrase.It's a true focus based on feedback form across the entire organization .We are not only good at accepting feedback,we deliberately ask for feedback.we know that feedback is helpful only when it highlights weaknesses aswell as strengths.  " 
                          BackColor="#FFCC99"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <ajax:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </ajax:ToolkitScriptManager>
                <center>
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="500" Width="500" BorderColor="black" />
                    <ajax:SlideShowExtender ID="SlideShowExtender" TargetControlID="ImageButton1" runat="server" 
                    SlideShowServiceMethod="GetImage"
                    AutoPlay="true" Loop="true"  ImageTitleLabelID="title">
                    </ajax:SlideShowExtender>
                    <br />
                </center>
                <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" 
                TargetControlID="controlpanel" ExpandControlID="titlepanel" CollapseControlID="titlepanel" 
                Collapsed="true" TextLabelID="label18" ExpandedText="(hide details...)"
                 CollapsedText="(show details...)"   SuppressPostBack="true">

                </ajax:CollapsiblePanelExtender>
             
                <asp:Panel ID="titlepanel" runat="server" CssClass="feedbackinstructionheading">
                   INSTRUCTIONS FOR YOUR FEEDBACK FORM SUBMISSION....
                <asp:Label ID="Label18" runat="server" Text="(show details....)"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="controlpanel" runat="server" CssClass="feedbackinstruct">
                <h1> The Instructions which you follow for the submission for our feedback form is listed below :</h1>
                <p>1.For giveing feedback,firstly you must registered to our student registration form.</p>
                <p>2.In the student registration form,select your department or course which you are pursuing correctly.</p>
                <p>3.Generate your username and password correctly.</p>
                <p>4.For giveing feedback,log in to our page.</p>
                <p>5.Select the field in which you wants to give your valuble feedback.</p>
                <p>6.For more suggestios,you can write to us , in that form too.</p>
                <p>7.Then,submit your valuable feedback to us. </p>
                <p>8.In last,if you find this feedback form system worthy,then rate us.</p>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

