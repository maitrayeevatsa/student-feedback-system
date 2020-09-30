<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CurriculumDB.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 474px;
        }
    </style>
    <link href="project.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style6">
        <tr>
            <td class="style7" style="text-align: center">
                <asp:Label ID="Label4" runat="server" style="text-align: center" 
                    Text="Suggestion (Curriculum)" CssClass="heading" BackColor="#FFFFCC" 
                    ForeColor="#990000"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Repeater ID="Repeater1" runat="server" 
                    onitemcommand="Repeater1_ItemCommand">
                <HeaderTemplate>
                  <table style="border:1px solid #0000FF; width: 500px" cellpadding="2">
                     <tr style="background-color: #FF6600; color: #000000; font-size:large; font-weight:bold;">
                       <td>
                       <b>Suggestions)</b>
                       </td>
                     </tr>
                  </table>
                </HeaderTemplate>
                <ItemTemplate>
                     <tr style="background-color:#EBEFF0;border-top:1px dotted #df5015; width:500px"> 
                       <td>Suggestion:
                         <asp:Label ID="Label2" runat="server" Text='<%#Eval("currisuggestion") %>' Font-Bold="true"></asp:Label>
                       </td>
                     </tr>
                     <tr>
                       <td>
                        <table style="background-color:#EBEFF0; border-top:1px dotted #df5015; width:500px">
                          <tr>
                            <td>Created Date: <asp:Label ID="Label3" runat="server" Font-Bold="true" Text='<%#Eval("postdate") %>'>'</asp:Label></td>
                         </tr>
                        </table>
                      </td>
                    </tr>
                </ItemTemplate>
                </asp:Repeater>
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

