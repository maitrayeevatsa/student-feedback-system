<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="project.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .styl
        {
            width: 375px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: right">
        <asp:Label ID="Label27" runat="server" BackColor="#FFFFCC" ForeColor="#990000" 
            style="text-align: right"/></p><asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="2" 
        Width="750px">
        <asp:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
<HeaderTemplate>
          Curriculum &amp; Teaching Feedback
</HeaderTemplate>
<ContentTemplate>
        <table>
            <tr class="subheading">
                <td>
                    Sr. No.</td>
                <td>
                    Questions</td>
                <td>
                    Feedback</td>
             </tr>
             <tr class="row2">
                <td class="feedbackcol1">1.</td>
                <td class="question">
                    <asp:Label ID="Label2" runat="server" 
                    Text="The Teacher cover the entire syllabus in time."></asp:Label>
                </td>
                <td class="radiobutton">
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="200px">
                        <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                        <asp:ListItem Value="3">Agree</asp:ListItem>
                        <asp:ListItem Value="2">Disagree</asp:ListItem>
                        <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
             </tr>
             <tr class="row3">
                <td class="feedbackcol1">
                    2.</td>
                <td class="question">
                <asp:Label ID="Label3" runat="server" 
                    Text="The Teacher discuss the topic in detail."></asp:Label>


                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="200px"><asp:ListItem Value="4">Strongly agree</asp:ListItem>
<asp:ListItem Value="3">Agree</asp:ListItem>
<asp:ListItem Value="2">Disagree</asp:ListItem>
<asp:ListItem Value="1">Strongly disagree</asp:ListItem>
</asp:RadioButtonList>

                 <br />
               </td>
           </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                    3.</td>
                <td class="question">
                <asp:Label ID="Label4" runat="server" 
                    Text="The Teacher communicate clearly."></asp:Label>


                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" Width="200px"><asp:ListItem Value="4">Strongly agree</asp:ListItem>
<asp:ListItem Value="3">Agree</asp:ListItem>
<asp:ListItem Value="2">Disagree</asp:ListItem>
<asp:ListItem Value="1">Strongly disagree</asp:ListItem>
</asp:RadioButtonList>

                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">4.</td>
                <td class="question">
                    <asp:Label ID="Label5" runat="server" 
                    Text="The Teacher are punctual &amp; regular in taking parctical &amp; lectures."></asp:Label>
                </td>
                <td class="radiobutton">
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" Width="200px">
                        <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                        <asp:ListItem Value="3">Agree</asp:ListItem>
                        <asp:ListItem Value="2">Disagree</asp:ListItem>
                        <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
             </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                    5.</td>
                <td class="question">
                <asp:Label ID="Label6" runat="server" 
                    Text="The teacher are fair &amp; unbiased in evaluation process."></asp:Label>


                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList5" runat="server" Width="200px"><asp:ListItem Value="4">Strongly agree</asp:ListItem>
<asp:ListItem Value="3">Agree</asp:ListItem>
<asp:ListItem Value="2">Disagree</asp:ListItem>
<asp:ListItem Value="1">Strongly disagree</asp:ListItem>
</asp:RadioButtonList>

                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">
                    6.</td>
                <td class="question">
                <asp:Label ID="Label7" runat="server" 
                    Text="The Teacher attitude towards students is friendly &amp; helpful."></asp:Label>


                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList6" runat="server" Width="200px"><asp:ListItem Value="4">Strongly agree</asp:ListItem>
<asp:ListItem Value="3">Agree</asp:ListItem>
<asp:ListItem Value="2">Disagree</asp:ListItem>
<asp:ListItem Value="1">Strongly disagree</asp:ListItem>
</asp:RadioButtonList>

                 <br />
               </td>
           </tr>
           <tr class="row2">
                <td class="feedbackcol1">&nbsp;</td>
                <td class="question">
                    <br />
                    <asp:Label ID="clabel" runat="server" Text="Suggestions, if any" Font-Bold="True"
                    Font-Names="Georgia" Font-Size="Large" />
                    <br />
                    <asp:TextBox ID="cbox" runat="server" TextMode= "MultiLine" />
                </td>
                <td>
                    &nbsp;</td>
             </tr>
           </table>
        
</ContentTemplate>
</asp:TabPanel>
        <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
        
        

        
<HeaderTemplate>
         Governance &amp; Management
        
</HeaderTemplate>
<ContentTemplate>
        <table>
            <tr class="subheading">
                <td>
                    Sr.<br />No.</td>
                <td>
                    Question</td>
                <td>
                    Feedback</td>
             </tr>
             <tr class="row2">
                <td class="feedbackcol1">1.</td>
                <td class="question">
                    <asp:Label ID="Label9" runat="server" 
                    Text="Administrative staff is polite."></asp:Label>
                </td>
                <td class="radiobutton">
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList7" runat="server" Width="200px">
                        <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                        <asp:ListItem Value="3">Agree</asp:ListItem>
                        <asp:ListItem Value="2">Disagree</asp:ListItem>
                        <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
             </tr>
             <tr class="row3">
                <td class="feedbackcol1">
                    2.</td>
                <td class="question">
                <asp:Label ID="Label10" runat="server" 
                    Text="Administrative staff is efficient and helpful in its functioning."></asp:Label>


                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList8" runat="server" Width="200px"><asp:ListItem Value="4">Strongly agree</asp:ListItem>
<asp:ListItem Value="3">Agree</asp:ListItem>
<asp:ListItem Value="2">Disagree</asp:ListItem>
<asp:ListItem Value="1">Strongly disagree</asp:ListItem>
</asp:RadioButtonList>

                 <br />
               </td>
           </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                    3.</td>
                <td class="question">
                <asp:Label ID="Label11" runat="server" 
                    Text="Head of the institution is approachable."></asp:Label>


                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList9" runat="server" Width="200px"><asp:ListItem Value="4">Strongly agree</asp:ListItem>
<asp:ListItem Value="3">Agree</asp:ListItem>
<asp:ListItem Value="2">Disagree</asp:ListItem>
<asp:ListItem Value="1">Strongly disagree</asp:ListItem>
</asp:RadioButtonList>

                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">4.</td>
                <td class="question">
                    <asp:Label ID="Label12" runat="server" 
                    Text="Head of the department is approachable."></asp:Label>
                </td>
                <td class="radiobutton">
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList10" runat="server" Width="200px">
                        <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                        <asp:ListItem Value="3">Agree</asp:ListItem>
                        <asp:ListItem Value="2">Disagree</asp:ListItem>
                        <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
             </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                    5.</td>
                <td class="question">
                <asp:Label ID="Label13" runat="server" 
                    Text="Staffs give proper information about academic programs or courses."></asp:Label>


                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList11" runat="server" Width="200px"><asp:ListItem Value="4">Strongly agree</asp:ListItem>
<asp:ListItem Value="3">Agree</asp:ListItem>
<asp:ListItem Value="2">Disagree</asp:ListItem>
<asp:ListItem Value="1">Strongly disagree</asp:ListItem>
</asp:RadioButtonList>

                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">
                    6.</td>
                <td class="question">
                <asp:Label ID="Label14" runat="server" 
                    Text="All the staffs feels responsibilty towards students and their duties."></asp:Label>


                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList12" runat="server" Width="200px"><asp:ListItem Value="4">Strongly agree</asp:ListItem>
<asp:ListItem Value="3">Agree</asp:ListItem>
<asp:ListItem Value="2">Disagree</asp:ListItem>
<asp:ListItem Value="1">Strongly disagree</asp:ListItem>
</asp:RadioButtonList>

                 <br />
               </td>
           </tr>
           <tr class="row2">
                <td>&nbsp;</td>
                <td class="question">
                    <br />
                    <asp:Label ID="glabel" runat="server" Text="Suggestions, if any" Font-Bold="True"
                    Font-Names="Georgia" Font-Size="Large" />
                    <br />
                    <asp:TextBox ID="gbox" runat="server" TextMode= "MultiLine" />
                </td>
                <td>
                    &nbsp;</td>
             </tr>
           </table>
        
</ContentTemplate>
</asp:TabPanel>
        <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
        
        

        
<HeaderTemplate>
         Infrastructure
        
</HeaderTemplate>
<ContentTemplate>
        <table>
            <tr class="subheading">
                <td>
                    Sr. No.</td>
                <td>
                    Questions</td>
                <td>
                    Feedback</td>
             </tr>
             <tr class="subsubh">
                <td class="fc1">1
                </td>
                <td class="question1">Medical facilities
                </td>
                <td class="radiobutton1">
                </td>
             </tr>
             <tr class="row2">
                <td class="feedbackcol1">
                1.a.</td>
                <td class="question">
                <asp:Label ID="Label1" runat="server" 
                    Text="First-aid facilities in case of emergency."></asp:Label>

                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList13" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">
               1.b.</td>
                <td class="question">
                <asp:Label ID="Label8" runat="server" 
                    Text="Well equipped medical room."></asp:Label>

                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList14" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="subsubh">
                <td class="fc1">2
                </td>
                <td class="question1">Sanitation & Water facilities
                </td>
                <td class="radiobutton1">
                </td>
             </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                2.a.</td>
                <td class="question">
                <asp:Label ID="Label15" runat="server" 
                    Text="Availablity of clean drinking water."></asp:Label>

                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList15" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">
                2.b.</td>
                <td class="question">
                <asp:Label ID="Label16" runat="server" 
                    Text="Availablity of clean and hygenic and clean toilets."></asp:Label>

                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList16" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="subsubh">
                <td class="fc1">3
                </td>
                <td class="question1">Library
                </td>
                <td class="radiobutton1">
                </td>
             </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                3.a.</td>
                <td class="question">
                <asp:Label ID="Label17" runat="server" 
                        Text="Cataloguing and arrangement of the books in library."></asp:Label>

                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList17" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           
           <tr class="row3">
                <td class="feedbackcol1">
                3.b.</td>
                <td class="question">
                <asp:Label ID="Label18" runat="server" Text="Reading space in the library"></asp:Label>

                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList18" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
                <tr class="row4">
                <td class="feedbackcol1">
                3.c.</td>
                <td class="question">
                <asp:Label ID="Label29" runat="server" 
                        Text="Cataloguing and arrangement of the books in library."></asp:Label>

                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList27" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
           </tr>
            <tr class="subsubh">
                <td class="fc1">4
                </td>
                <td class="question1">Sports
                </td>
                <td class="radiobutton1">
                </td>
             </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                4.a.</td>
                <td class="question">
                <asp:Label ID="Label19" runat="server" 
                        Text="Motivation provided by sports department to take parts in games"></asp:Label>

                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList19" runat="server" Width="200px">
                            <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                            <asp:ListItem Value="3">Agree</asp:ListItem>
                            <asp:ListItem Value="2">Disagree</asp:ListItem>
                            <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">
                4.b.</td>
                <td class="question">
                <asp:Label ID="Label20" runat="server" Text="Sports equipment and playgrounds"></asp:Label>

                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList20" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>

                 <br />
               </td>
           </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="question">
                   <br />
                   <asp:Label ID="ilabel" runat="server" Font-Bold="True" Font-Names="Georgia" 
                        Font-Size="Large" Text="Suggestions, if any"></asp:Label>
<br />
                    <asp:TextBox ID="ibox" runat="server" TextMode="MultiLine"></asp:TextBox>

                   </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
</ContentTemplate>
</asp:TabPanel>
        <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
        
        
        
        
        <HeaderTemplate>
          Residence
        
</HeaderTemplate>
<ContentTemplate>
         <table>
            <tr class="subheading">
                <td >
                    Sr. No.</td>
                <td >
                    Questions</td>
                <td>
                    Feedback</td>
             </tr>
             <tr class="row2">
                <td class="feedbackcol1">
                1.</td>
                <td class="question">
                <asp:Label ID="Label21" runat="server" 
                    Text="Availablity of clean drinking water in Hostel."></asp:Label>
                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList21" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">
                2.</td>
                <td class="question">
                <asp:Label ID="Label22" runat="server" 
                    Text="Well equipped hostel room with all facilities."></asp:Label>
                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList22" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                3.</td>
                <td class="question">
                <asp:Label ID="Label23" runat="server" 
                    Text="Availablity of clean and hygenic toilets"></asp:Label>
                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList23" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">
                4.</td>
                <td class="question">
                <asp:Label ID="Label24" runat="server" 
                    Text="Continous supply of electricity"></asp:Label>
                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList24" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                5.</td>
                <td class="question">
                <asp:Label ID="Label25" runat="server" 
                    Text="Availablity of healthy and nutritious food ."></asp:Label>
                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList25" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="row3">
                <td class="feedbackcol1">
                6.</td>
                <td class="question">
                <asp:Label ID="Label26" runat="server" 
                    Text="Behaviour of wardens in hostels is appreciable."></asp:Label>
                </td>
                <td class="radiobutton">
                 <br />  
                    <asp:RadioButtonList ID="RadioButtonList26" runat="server" Width="200px">
                    <asp:ListItem Value="4">Strongly agree</asp:ListItem>
                    <asp:ListItem Value="3">Agree</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                    <asp:ListItem Value="1">Strongly disagree</asp:ListItem>
                    </asp:RadioButtonList>
                 <br />
               </td>
           </tr>
           <tr class="row2">
                <td class="feedbackcol1">
                    &nbsp;</td>
                <td class="question">
                   <br />
                   <asp:Label ID="rlabel" runat="server" Text="Suggestions, if any" Font-Bold="True"
                    Font-Names="Georgia" Font-Size="Large" /><br />
                    <asp:TextBox ID="rbox" runat="server" TextMode= "MultiLine" />
                   </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        
</ContentTemplate>
</asp:TabPanel>
    </asp:TabContainer>
    <br />
    <table>
    <tr>
    <td align="left" class="styl"><asp:Button ID="Button1" runat="server" 
            Font-Size="Large" Text="Log out" CssClass="button" onclick="Button1_Click" />
    </td>
    <td align="right" class="styl" >
        <asp:Button ID="submit" runat="server" 
            Font-Size="Large" Text="Submit" CssClass="button" onclick="submit_Click" />
    </td>
    </tr></table>
</asp:Content>

