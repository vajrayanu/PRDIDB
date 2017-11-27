<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PMenu.ascx.cs" Inherits="PRDIDBSystem.web_Control.PMenu" %>

<nav class="irpc-nav">
    <div class="irpc-nav-inner">
        <ul class="irpc-hmenu">
            <li><a href="<%= ResolveUrl("~/page_Power/PHome.aspx") %>" class="active">Home</a></li>
            <li><a href="#">PRD</a><ul>
                <li><a href="<%= ResolveUrl("~/page_Power/PPRD_Overview.aspx") %>">PRD Data</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PPRD_Data.aspx") %>">Search PRD Data</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PTest.aspx") %>">Test Data</a></li>
            </ul>
            </li>
            <li><a href="#">Support Data</a><ul>
                <li><a href="<%= ResolveUrl("~/page_Power/PContractor.aspx") %>">Menufacturer</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PInspector.aspx") %>">Inspector</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PComplex.aspx") %>">Complex</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PPlant.aspx") %>">Plant</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PArea.aspx") %>">Area</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PServiceFluid.aspx") %>">Service Fluid</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PSizingBasis.aspx") %>">Sizing Basis</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PPRD_Type.aspx") %>">PRD Type</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PUnit.aspx") %>">Unit</a></li>
            </ul>
            </li>
            <li><a href="<%= ResolveUrl("~/page_Power/PReport.aspx") %>">Report</a>
                 <ul>
                    <li><a href="<%= ResolveUrl("~/page_Power/PSummary_Status_prd_Report.aspx") %>" target="_blank">Summary Status PRD Report</a></li>
                     <li><a href="<%= ResolveUrl("~/page_Power/PSummary_Status_prd_Report2.aspx") %>" target="_blank">Inspection Plan(By Year)</a></li>
                    <li><a href="<%= ResolveUrl("~/page_Power/PStatus_all_prd_Report.aspx") %>" target="_blank">Test PRD Report (Last Test Only)</a></li>
                    <li><a href="<%= ResolveUrl("~/page_Power/PTest_prd_Report.aspx") %>" target="_blank">Test PRD Report (All Test)</a></li>
                    <li><a href="<%= ResolveUrl("~/page_Power/PAll_prd_Report_Last.aspx") %>" target="_blank">All PRD Report (Last Test Only)</a></li>
                     <li><a href="<%= ResolveUrl("~/page_Power/PAll_prd_Report_All.aspx") %>" target="_blank">All PRD Report (All Test)</a></li>
                </ul>
            </li>
            <li><a href="<%= ResolveUrl("~/Logout.aspx") %>">Logout</a></li>
        </ul>
    </div>
</nav>
