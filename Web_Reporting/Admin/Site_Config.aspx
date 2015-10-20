<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Site_Config.aspx.cs" Inherits="Site_Config" MasterPageFile="~/Site.Master" ValidateRequest="false"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<script type="text/javascript">
    function AutoExpand(txtbox) 
    {
        txtbox.style.height = "1px";
        txtbox.style.height = (25 + txtbox.scrollHeight) + "px";
    }
</script>


<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

        <h1>Site Message</h1>

        <div class="form_block"> 
        New message
        <br />
        <asp:TextBox class="textarea_box" ID="txtAnncmnt" runat="server" rows="5" TextMode="MultiLine"></asp:TextBox>
        <asp:button ID="btnUpdate" text="Update" runat="server" onclick="UpdateAnnouncement" class="submit_button" />
        </div>

        <div style="display: inline-block; vertical-align: top; border: 1px solid #008643; padding: 5px;">
        <b> Current message:</b>
        <br /> 
        <asp:Label ID="lblAnncmnt" runat="server" Text="Label"></asp:Label>
        </div>

      </form>
</body>
</html>
</asp:Content>
