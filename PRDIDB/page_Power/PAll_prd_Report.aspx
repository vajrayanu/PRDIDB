<%@ Page Title="" Language="C#" MasterPageFile="~/design/PowerReportMasterPage.Master" AutoEventWireup="true" CodeBehind="PAll_prd_Report.aspx.cs" Inherits="PRDIDBSystem.page_Power.PAll_prd_Report" %>



<%@ Register TagPrefix="art" TagName="Header" Src="~/web_Control/PHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="Menu" Src="~/web_Control/PMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="Sidebar1" Src="~/web_Control/PSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="Footer" Src="~/web_Control/PFooter.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
    <style>
        .irpc-content .irpc-postcontent-0 .layout-item-0
        {
            margin-bottom: 10px;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-1
        {
            border-spacing: 10px 0px;
            border-collapse: separate;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-2
        {
            border-top-style: solid;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-top-width: 1px;
            border-right-width: 1px;
            border-bottom-width: 1px;
            border-left-width: 1px;
            border-top-color: #DCEB8E;
            border-right-color: #DCEB8E;
            border-bottom-color: #DCEB8E;
            border-left-color: #DCEB8E;
            color: #343D0B;
            background: #DFE2CF;
            padding-right: 10px;
            padding-left: 10px;
            border-radius: 10px;
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





