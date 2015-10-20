<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Technical_Home.aspx.cs" Inherits="Technical_Home" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>
        <asp:Label ID="LblAnn" runat="server"></asp:Label>

        <h1>Technical Reports</h1>

     <div class="block_wrapper">

        <a href="Integration/Dashboard.aspx" class="block_grey_large" title="Integration Dashboard">Integration <br /> Dashboard</a>
        <a href="Integration/Detailed_Summary.aspx" class="block_grey_large" title="Detailed Integration Summary">Detailed Integration <br /> Summary</a>
        <a href="Integration/Make/MORLSENDQ_trans.aspx" class="block_grey_large" title="MORLSENDQ (MTL) Transactions">MORLSENDQ (MTL) <br /> Transactions</a>
        <a href="Integration/Make/MORLSENDQ_Trans_Enquiry.aspx" class="block_grey_large" title="MORLSENDQ (MTL) Transaction Enquiry">MORLSENDQ (MTL) <br /> Transaction Enquiry</a>
        <a href="Integration/Make/MORLSENDQ_Custom_SQL.aspx" class="block_grey_large" title="MORLSENDQ SQL Generator">MORLSENDQ SQL <br /> Generator</a>
        <a href="Integration/Make/Tec_MORLEBATCH_trans.aspx" class="block_grey_large" title="OPM Batch Transactions">OPM Batch <br /> Transactions</a>
        <a href="Integration/Source/Tec_MORLKBATCH_trans.aspx" class="block_grey_large" title="Source Kill Batch Transactions">Source Kill <br /> Batch Transactions</a>
        <a href="Integration/AP/MORLPAYCERTS_trans.aspx" class="block_grey_large" title="Payment Certificate Transactions">Payment Certificate <br /> Transactions</a>
        <a href="Integration/AP/MORLSUPPLIERS_errors.aspx" class="block_grey_large" title="Supplier Errors">Supplier <br /> Errors</a>
        <a href="BAU/LPKBatch_Seq_Check.aspx" class="block_grey_large" title="Pig / Lamb Kill Batch Consistency Check">Pig / Lamb Kill Batch <br /> Consistency Check</a>

    </div>
      
    </form>
        </body>
</html>
</asp:Content>
