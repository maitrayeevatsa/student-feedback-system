<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style6
        {
            text-align: center;
        }
        
        
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style5">
        <tr>
            <td class="style6">
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Georgia" 
                Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" 
                Font-Underline="True" ForeColor="White" Text="Student Feedback System"></asp:Label>
                <br />
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left"  >
            <asp:Label ID="Label2" runat="server" Font-bold="True" 
                Font-Names="Arial Black" ForeColor="white" Width="100%" 
                
                    Text="The purpose of this feedback questionnaire is to gather information on your learning experience, as well as your responses to; the teacher(s). Please think of these questions as eliciting your subjective perceptions on various aspects of the course and the teacher(s) involved in the course. The information you provide will be useful to your teacher(s) as well as to the University in the ongoing efforts to enhance the quality of education. The data you provide will be treated as confidential. The evaluation results will be computed using the total scores from the responses from all students and will be released to the affected teachers after you have received your examination results."></asp:Label>
                    </td>
        </tr>
    </table>
</asp:Content>

