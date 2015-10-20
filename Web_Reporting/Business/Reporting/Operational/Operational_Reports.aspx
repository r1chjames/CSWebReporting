<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Operational_Reports.aspx.cs" Inherits="Operational_Reports" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

         <h1>Hardware Reports</h1>

    <div class="block_wrapper">
         
         <a href="Colne_RFID_Scan_Rate.aspx" class="block_grey_large" title="Colne slaughter gambrel RFID scan rate">Colne RFID <br /> Scan Rate</a>
         <a href="Colne_RFID_Scan_Detail.aspx" class="block_grey_large" title="Colne slaughter gambrel RFID scan detail">Colne RFID <br /> Scan Detail</a>
         <a href="ARAMS_Data_Export.aspx" class="block_grey_large" title="ARAMS data export">ARAMS Data <br /> Export</a>
         <a href="ARAMS_Reader_Detail.aspx" class="block_grey_large" title="ARAMS reader detail">ARAMS Reader <br /> Detail</a>
         <a href="ARAMS_Session_Tag_Data.aspx" class="block_grey_large" title="ARAMS session tag data">ARAMS Session<br /> Tag Data</a>
         <a href="Bizerba_OCM_Numerators.aspx" class="block_grey_large" title="Bizerba OCM Numerators">Bizerba OCM<br /> Numerators</a>

 </div>

    </form>
        </body>
</html>
</asp:Content>