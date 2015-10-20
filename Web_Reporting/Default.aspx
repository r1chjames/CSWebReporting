<%@ Page Language="C#" AutoEventWireup="true" Inherits="Default" MasterPageFile="~/Site.Master" Codebehind="Default.aspx.cs" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>
        <h1>Woodheads Support</h1>

<div class="block_wrapper" style="text-align: center;">

    <a href="Business/Business_Home.aspx" class="block_home_left" title="Business Reports">Reports<br /><span class="block_home_fresh">Business</span></a>
    <a href="Technical/Technical_Home.aspx" class="block_home_right" title="Technical Reports">Reports<br /><span class="block_home_fresh">Technical</span></a>
    <a href="Common/Help.aspx" class="block_home_help" title="Help">WEBSITE<br /><span class="block_home_help_fresh">Help</span></a>

</div>
    
</form>
</body>
</html>
</asp:Content>
