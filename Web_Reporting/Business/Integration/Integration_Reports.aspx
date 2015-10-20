<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Integration_Reports.aspx.cs" Inherits="Integration_Reports" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head></head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

         <h1>Integration Reports</h1>

    <div class="block_wrapper">

         <a href="Business_Summary.aspx" class="block_grey_large" title="Returns the status of the material transaction integration">Integration <br /> Summary</a>
         <a href="Source/Kill_Batches.aspx" class="block_grey_large" title="Summary of all inbound kill batches for all sites">Kill Batch <br /> Summary</a>
         <a href="Source/Bus_MORLKBATCH_trans.aspx" class="block_grey_large" title="Inbound kill batch transactions to Niche from EBS">Source Kill Batch <br /> Transactions</a>
         <a href="Make/Bus_MORLSENDQ_trans.aspx" class="block_grey_large" title="Outbound transactions from Niche to EBS of a specified processing status and date">Material <br /> Transactions</a> 
         <a href="Make/MORLSENDQ_Volumes.aspx" class="block_grey_large" title="Outbound transactions from Niche to EBS for a specified type and date">Material Transaction <br /> Volumes</a>
         <a href="Deliver/LPN_Status_Enq.aspx" class="block_grey_large" title="Trace data for a single LPN in Niche">Despatch LPN Trace <br /> Enquiry</a>             
         <a href="Make/OPM_Batch_Item_Enquiry.aspx" class="block_grey_large" title="Valid OPM batches for a specified EBS item number">OPM Batch Item <br /> Enquiry</a> 
         <a href="Make/OPM_Batch_Status_Enquiry.aspx" class="block_grey_large" title="Report to see the status of a specified OPM batch">OPM Batch Status <br /> Enquiry</a>
 
    </div>

    </form>
        </body>
</html>
</asp:Content>
