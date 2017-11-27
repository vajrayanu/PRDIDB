<%@ Page Title="" Language="C#" MasterPageFile="~/design/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="GReport.aspx.cs" Inherits="PRDIDBSystem.page_Guest.GReport" %>


<%@ Register TagPrefix="art" TagName="Header" Src="~/web_Control/GHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="Menu" Src="~/web_Control/GMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="Sidebar1" Src="~/web_Control/GSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="Footer" Src="~/web_Control/GFooter.ascx" %>


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
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadItemsContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <art:Menu ID="DefaultMenuContent" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    <art:Header ID="DefaultHeaderContent" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" runat="server">
    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" Style="text-align: center">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <art:Sidebar1 ID="DefaultSidebar1Content" runat="server" />
    <!-- <div class="irpc-vmenublock clearfix">
        <div class="irpc-vmenublockheader">
            <h3 class="t">Vertical Menu</h3>
        </div>
        <div class="irpc-vmenublockcontent">
            <ul class="irpc-vmenu">
                <li>
                    <a href="<%= ResolveUrl("~/Default.aspx") %>">Page 1</a>
                    <ul>
                        <li>
                            <a href="<%= ResolveUrl("~/new-page/new-page.aspx") %>">Subpage 1</a>
                        </li>
                        <li>
                            <a href="<%= ResolveUrl("~/new-page/new-page-2.aspx") %>">Subpage 2</a>
                        </li>
                        <li>
                            <a href="<%= ResolveUrl("~/new-page/new-page-3.aspx") %>">Subpage 3</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<%= ResolveUrl("~/new-page-2.aspx") %>">Page 2</a>
                </li>
            </ul>

        </div>
    </div> -->
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <article class="irpc-post irpc-article">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">PRD REPORT</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: 100%">
                        <br />
                    </div>
                </div>
            </div>
        </div>
        <div class="irpc-content-layout-wrapper layout-item-0">
            <div class="irpc-content-layout layout-item-1">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: center;">
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/icon/summary_Report_icon .png" NavigateUrl="~/page_Guest/GSummary_Status_prd_Report.aspx" Target="_blank">HyperLink</asp:HyperLink>
                    </div>
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: left;">
                           <asp:HyperLink ID="HyperLink6" runat="server" ImageUrl="~/images/icon/summer_Report_icon_2.png" NavigateUrl="~/page_Guest/GSummary_Status_prd_Report2.aspx" Target="_blank">HyperLink</asp:HyperLink>
                
                         </div>
                </div>
            </div>
        </div>
        <div class="irpc-content-layout-wrapper layout-item-0">
            <div class="irpc-content-layout layout-item-1">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: center;">
                        <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/images/icon/test_prd_Report_icon.png" NavigateUrl="~/page_Guest/GTest_prd_Report.aspx" Target="_blank">HyperLink</asp:HyperLink>
                    </div>
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: left;">
                         <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/icon/status_all_prd_Report_icon.png" NavigateUrl="~/page_Guest/GStatus_all_prd_Report.aspx" Target="_blank">HyperLink</asp:HyperLink>
                  
                          </div>
                    
                </div>
            </div>
        </div>
         <div class="irpc-content-layout-wrapper layout-item-0">
            <div class="irpc-content-layout layout-item-1">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: center;">
                         <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/images/icon/all_prd_Report_2.png" NavigateUrl="~/page_Guest/GAll_prd_Report_All.aspx" Target="_blank">HyperLink</asp:HyperLink>
                    </div>
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: left;">
                          <asp:HyperLink ID="HyperLink4" runat="server" ImageUrl="~/images/icon/all_prd_Report_1.png" NavigateUrl="~/page_Guest/GAll_prd_Report_Last.aspx" Target="_blank">HyperLink</asp:HyperLink>
                 
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
        </div>

    </article>
    
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>

