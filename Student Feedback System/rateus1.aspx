<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rateus1.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            width: 100%;
        }
    </style>
    <link href="project.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="width: 796px">
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/rateus.jpg" Height="300" Width="900" BorderColor="black"/>
        <br />
        <table class="style16">
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="LOVE GIVEING FEEDBACK?" 
                        Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" 
                        CssClass="ratelabel"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label17" runat="server" 
                        
                        
                        Text="                                                                                                     RATE US........." Font-Bold="True" 
                        Font-Italic="True" Font-Size="Large" CssClass="ratelabel"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" 
                        Text="RECOMMMEND TO OTHERS BY LEAVING US A RATING.." Font-Bold="True" 
                        Font-Italic="True" Font-Size="X-Large" ForeColor="#CC0000" 
                        BackColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="YES..RATE NOW" 
                        ForeColor="#CC3300" onclick="Button1_Click" PostBackUrl="~/RateUs.aspx" 
                        Font-Bold="True" />
                </td>
            </tr>
        </table>
    </p>
   
</asp:Content>

