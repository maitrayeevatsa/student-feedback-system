<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title></title>
    <link href="project.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center> <br />
        <asp:Label ID="Label16" runat="server" Text="CONTACT US" Font-Bold="True" 
            Font-Italic="True" CssClass="heading"></asp:Label></center>
    <br />
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
   <br />
    <cc1:Accordion ID="Accordion1" runat="server" ContentCssClass="content1" 
            HeaderCssClass="header1" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#990000">
    <Panes>
    
        <cc1:AccordionPane ID="AccordionPane1" runat="server" ContentCssClass="content1" 
            HeaderCssClass="header1">
            <Header>
            EMAIL-ID
           </Header>
          <Content> 
          <asp:Panel ID="Panel2" runat="server">
                <table style="border:1px solid #000000; width: 700px" cellpadding="2">
                <tr class="name">
                <td>Prof.Aditya Shastri<br />(Vice Chancellor)</td>

                <td> saditya@banasthali.ac.in</td>
                </tr>
                <br />
                <tr class="name1">
                <td>Prof.Ina Shastri<br />(Pro Vice Chancellor)</td>    
                <td> ina_shastri@yahoo.com</td>
                </tr>
                <br />
                <tr class="name">
                <td>Prof.Dharam Kishore<br /> (Offg.Secretary)</td> 
                <td> kishoredharama@yahoo.com.in</td>
                </tr>
                <br />
                <tr class="name1">
                <td>Prof.Sudha Shastri<br />(Treasurer)</td>
                <td> shastri.sudha@yahoo.com</td>
                </tr>
                <br />
                <tr class="name">
                <td>Chief  Warden</td>
                <td>cwarden@banasthali.ac.in</td>
                </tr>
                <br />
                <tr class="name1">
                <td>Dean Administration  </td>
                <td>deanadmin@banasthali.ac.in</td>
                </tr>
                <br />
                <tr class="name">
                <td>Mr.H.L.Mital </td>
                <td>mital_hl@yahoo.co.in</td>
                </tr>
                <br />
                <tr class="name1">
                <td>Apaji Institute </td>
                <td>info@banasthali.ac.in</td>
                </tr>
                </table>
                </asp:Panel>
</Content>
            </cc1:AccordionPane>
        <cc1:AccordionPane ID="AccordionPane2" runat="server" ContentCssClass="content1" 
            HeaderCssClass="header1">
            <Header>
               PHONE NUMBER
          </Header>
         <Content>
          <asp:Panel ID="Panel1" runat="server">
                <table style="border:1px solid #000000; width: 700px" cellpadding="2">
                <tr class="name">
                <td >Prof.Aditya Shastri<br />(Vice Chancellor)</td>
                <td>01438-228787</td>
                </tr>
                <br />
                <tr class="name1">
                <td>Prof.Ina Shastri<br />(Pro Vice Chancellor)</td>    
                <td>01438-228359</td>
                </tr>
                <br />
                <tr class="name">
                <td>Prof.Dharam Kishore<br /> (Offg.Secretary)</td> 
                <td>01438-228456</td>
                </tr>
                <br />
                <tr class="name1">
                <td>Prof.Sudha Shastri<br />(Treasurer)</td>
                <td>01438-228523</td>
                </tr>
                <br />
                <tr class="name">
                <td>Chief  Warden</td>
                <td>01438-228355</td>
                </tr>
                <br />
                <tr class="name1">
                <td>Dean Administration  </td>
                <td>01438-22456</td>
                </tr>
                <br />
                <tr class="name">
                <td>Mr.H.L.Mital </td>
                <td>01438-228950</td>
                </tr>
                <br />
                <tr class="name1">
                <td>Apaji Institute </td>
                <td>01438-228647</td>
                </tr>
                </table>
                </asp:Panel>
</Content>
            </cc1:AccordionPane>
        <cc1:AccordionPane ID="AccordionPane3" runat="server" ContentCssClass="content1" 
            HeaderCssClass="header1">
            <Header>
      POSTAL ADDRESS
       </Header>
       <Content>
           <asp:Panel ID="Panel3" runat="server" CssClass="name">
           Banasthali Vidyapith<br />
           P.O.Banasthali Vidyapith<br />
           Newai,Tonk<br />
           Rajasthan-304022
            </asp:Panel>
        </Content>
       </cc1:AccordionPane>
    </Panes>
    </cc1:Accordion>

</asp:Content>

