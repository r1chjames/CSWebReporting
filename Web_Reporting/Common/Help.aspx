<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Help.aspx.cs" Inherits="Business_Home" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#q1').click(function (event) {
                $('#a1').slideToggle(500);
            });
            $('#q2').click(function (event) {
                $('#a2').slideToggle(500);
            });
            $('#q3').click(function (event) {
                $('#a3').slideToggle(500);
            });
            $('#q4').click(function (event) {
                $('#a4').slideToggle(500);
            });
            $('#q5').click(function (event) {
                $('#a5').slideToggle(500);
            });
            $('#q6').click(function (event) {
                $('#a6').slideToggle(500);
            });
            $('#q7').click(function (event) {
                $('#a7').slideToggle(500);
            });
            $('#q8').click(function (event) {
                $('#a8').slideToggle(500);
            });
        });
    </script>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

         <h1>Help</h1>

         <div class="form_block">
            <div style="width: 100%; text-align: center;"><img id="Img1" src="~/Styles/images/Help_white.png" alt="IT Service Desk" title="IT Service Desk" runat="server" /></div>
         <br />
         Please log all IT incidents to our 24/7 Service Desk. This will help us to assist you, as quickly as possible.
         <br /> <br />
         IT Service Desk
         <br />
         <span style="font-size: 23px; font-weight: normal;">0845 123 1234</span>
         <br /><br />
         Low priority?
         <br />
         <a href="mailto:help@email.com">help@email.com</a>
         </div>
         <div style="display: inline-block; vertical-align: top;">
          
            <h2 style="text-align: left;">General errors</h2>
            <br />
            <h4 id="q1">I keep being taken to an error page</h4>
            <div id="a1" class="answer">
                Sometimes when there is higher usage of the network or the databases, there will be a restriction on how many users can be connected at once. There may also be temporary network connectivity issues between Hilmore House and one of the servers, which may causing some errors. In most cases, waiting a few minutes and trying again will resolve the problem.
                <br /> <br />
                If an error persists for over one hour there may be a problem with the page. You can contact the IT Service Desk (details on the left) telling them the page that you were trying to run.
            </div>
            <br />
            <h4 id="q2">Why does my page keep loading slow or crashing?</h4>
            <div id="a2" class="answer">
                Some pages on this site fetch large amounts of data from the distributed servers and then return it to a central management server. This can take some time, especially when other site wide activities are going on, such as sending large e-mails or access central network drives. Please be patient when submitting a form - some queries can take up to five minutes to run.
            </div>
            <br />
            <h4 id="q3">Why am I being asked to enter a username and password?</h4>
            <div id="a3" class="answer">
                If you keep being asked to enter your username and password then you're attempting to access a part of the site that you do not have permission to do so. If you believe you should have access to a specific area then you can contact the IT Service Desk (details on the right), who can pass on your request to be reviewed.
            </div>
            <br />
            <h4 id="q4">I had a page bookmarked / in my favourites and now it has gone</h4>
            <div id="a4" class="answer">
                On rare occasions we move some of the pages around on the site to make it easier to navigate. This means that the old addresses that you may have saved will no longer work. The best thing to do is click the home icon (top left of the page) and begin browsing to the page through the updated menu.
            </div>  
       </div>
         </form>
        </body>
</html>
</asp:Content>
