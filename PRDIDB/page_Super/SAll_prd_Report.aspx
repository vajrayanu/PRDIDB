<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperReportMasterPage.Master" AutoEventWireup="true" CodeBehind="SAll_prd_Report.aspx.cs" Inherits="PRDIDBSystem.page_Super.SAll_prd_Report" %>

<%@ Register TagPrefix="art" TagName="Header" Src="~/web_Control/SHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="Menu" Src="~/web_Control/SMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="Sidebar1" Src="~/web_Control/SSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="Footer" Src="~/web_Control/SFooter.ascx" %>

<%@ Register TagPrefix="art" TagName="UserCounter" Src="~/web_Control/Counter.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
    <style>
        .irpc-content .irpc-postcontent-0 .layout-item-0
        {
            color: #1C4759;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-1
        {
            color: #1C4759;
            padding-right: 10px;
            padding-left: 10px;
        }

        .ie7 .irpc-post .irpc-layout-cell
        {
            border: none !important;
            padding: 0 !important;
        }

        .ie6 .irpc-post .irpc-layout-cell
        {
            border: none !important;
            padding: 0 !important;
        }
        .irpc-postheader
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadItemsContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <%--<art:Menu ID="DefaultMenuContent" runat="server" />--%>
    <nav class="irpc-nav">
    <div class="irpc-nav-inner">
        <ul class="irpc-hmenu">
            <li>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Close</asp:LinkButton></li>
        </ul>
    </div>
</nav>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    <art:Header ID="DefaultHeaderContent" runat="server" />
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <article class="irpc-post irpc-article" style="width:auto">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">&nbsp;ALL PRD REPORT</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width:auto">
                        <br />
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="irpc-content-layout-wrapper layout-item-0">
            <div class="irpc-content-layout layout-item-1">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: center;">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/icon/summary_Report_icon .png" />
                    </div>
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: left;">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/icon/status_all_prd_Report_icon.png" />
                    </div>
                </div>
            </div>
        </div>--%>
        <%--<div class="irpc-content-layout-wrapper layout-item-0">
            <div class="irpc-content-layout layout-item-1">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: center;">
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/icon/test_prd_Report_icon.png" />
                    </div>
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: left;">
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/icon/all_prd_Report_icon.png" />
                    </div>
                </div>
            </div>
        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: 100%">
                        <br /><br /><br />
                    </div>
                </div>
            </div>
        </div>--%>

    </article>
    
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>




