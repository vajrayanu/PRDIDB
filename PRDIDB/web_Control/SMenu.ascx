<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SMenu.ascx.cs" Inherits="PRDIDBSystem.web_Control.SMenu" %>
<nav class="irpc-nav">
    <div class="irpc-nav-inner">
        <ul class="irpc-hmenu">
            <li><a href="<%= ResolveUrl("~/page_Super/SHome.aspx") %>" class="active">Home</a></li>
            <li><a href="<%= ResolveUrl("~/page_Super/SPRD.aspx") %>">PRD</a><ul>
                
                <li><a href="<%= ResolveUrl("~/page_Super/SPRD_Overview.aspx") %>">PRD Data</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SPRD_Data.aspx") %>">Search PRD Data</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/STest.aspx") %>">Test Data</a></li>
            </ul>
            </li>
            <li><a href="<%= ResolveUrl("~/page_Super/SUser.aspx") %>">User</a></li>
            <li><a href="#">Support Data</a><ul>
                <li><a href="<%= ResolveUrl("~/page_Super/SContractor.aspx") %>">Manufacturer</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SInspector.aspx") %>">Inspector</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SComplex.aspx") %>">Complex</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SPlant.aspx") %>">Plant</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SArea.aspx") %>">Area</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SServiceFluid.aspx") %>">Service Fluid</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SSizingBasis.aspx") %>">Sizing Basis</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SPRD_Type.aspx") %>">PRD Type</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SUnit.aspx") %>">Unit</a></li>
            </ul>
            </li>
            <li><a href="<%= ResolveUrl("~/page_Super/SReport.aspx") %>">Report</a>
                 <ul>
                    <li><a href="<%= ResolveUrl("~/page_Super/SSummary_Status_prd_Report.aspx") %>" target="_blank">Summary Status PRD Report</a></li>
                       <li><a href="<%= ResolveUrl("~/page_Super/SSummary_Status_prd_Report2.aspx") %>" target="_blank">Inspection Plan(By Year)</a></li>
                    <li><a href="<%= ResolveUrl("~/page_Super/SStatus_all_prd_Report.aspx") %>" target="_blank">Test PRD Report (Last Test Only)</a></li>
                    <li><a href="<%= ResolveUrl("~/page_Super/STest_prd_Report.aspx") %>" target="_blank">Test PRD Report (All Test)</a></li>
                    <li><a href="<%= ResolveUrl("~/page_Super/SAll_prd_Report_Last.aspx") %>" target="_blank">All PRD Report (Last Test Only)</a></li>
                     <li><a href="<%= ResolveUrl("~/page_Super/SAll_prd_Report_All.aspx") %>" target="_blank">All PRD Report (All Test)</a></li>
                     <li><a href="<%= ResolveUrl("~/page_Super/SStatus_all_prd_plant_Report.aspx") %>" target="_blank">Test PRD All Plant Report (All Test)</a></li>
                </ul>
            </li>
            <li><a href="<%= ResolveUrl("~/page_Super/SDATA_History.aspx") %>">Data History</a></li>
            <li><a href="<%= ResolveUrl("~/Logout.aspx") %>">Logout</a></li>
        </ul>
    </div>
</nav>
