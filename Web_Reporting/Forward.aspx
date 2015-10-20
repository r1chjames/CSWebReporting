<%@ Page Language="C#" AutoEventWireup="true" Inherits="Forward" MasterPageFile="~/Site.Master" Codebehind="Forward.aspx.cs" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <script runat="server">

</script>
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <meta http-equiv="refresh" content="0; url=http://wmm0772manuap01/Web_Reporting/" />
        </head>
<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

      <p style="text-align:center; font-size: large; color: #FF3300;">

      Woodheads Support has moved. Click the link below to be forwarded.
      </br>
      </br>
      <asp:Button 
              ID="Button1" runat="server" Text="Forward" onclick="Forward_Click" />
        </p>
      
    </form>
        </body>
</html>
</asp:Content>
