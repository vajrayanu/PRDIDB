<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GMenu.ascx.cs" Inherits="PRDIDBSystem.web_Control.GMenu" %>


<nav class="irpc-nav">
    <div class="irpc-nav-inner">
        <ul class="irpc-hmenu">
            <li><a href="<%= ResolveUrl("~/page_Guest/GHome.aspx") %>" class="active">Home</a></li>
            <li><a href="#">PRD</a><ul>
               
                <li><a href="<%= ResolveUrl("~/page_Guest/GPRD_Data.aspx") %>">Search PRD Data</a></li>
                <li><a href="<%= ResolveUrl("~/page_Guest/GTest.aspx") %>">Test Data</a></li>
            </ul>
            </li>
            <li><a href="<%= ResolveUrl("~/page_Guest/GReport.aspx") %>">Report</a>
                 <ul>
                    <li><a href="<%= ResolveUrl("~/page_Guest/GSummary_Status_prd_Report.aspx") %>" target="_blank">Summary Status PRD Report</a></li>
                     <li><a href="<%= ResolveUrl("~/page_Guest/GSummary_Status_prd_Report2.aspx") %>" target="_blank">Inspection Plant (By Year)</a></li>
                    <li><a href="<%= ResolveUrl("~/page_Guest/GStatus_all_prd_Report.aspx") %>" target="_blank">Test PRD Report (Last Test Only)</a></li>
                    <li><a href="<%= ResolveUrl("~/page_Guest/GTest_prd_Report.aspx") %>" target="_blank">Test PRD Report (All Test)</a></li>
                    <li><a href="<%= ResolveUrl("~/page_Guest/GAll_prd_Report_Last.aspx") %>" target="_blank">All PRD Report (Last Test Only)</a></li>
                     <li><a href="<%= ResolveUrl("~/page_Guest/GAll_prd_Report_All.aspx") %>" target="_blank">All PRD Report (All Test)</a></li>
                </ul>
            </li>
            <li><a href="<%= ResolveUrl("~/Logout.aspx") %>">Logout</a></li>
        </ul>
    </div>
</nav>
