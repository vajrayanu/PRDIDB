<%@ Page Title="" Language="C#" MasterPageFile="~/design/PowerMasterPage.Master" AutoEventWireup="true" CodeBehind="PHome.aspx.cs" Inherits="PRDIDBSystem.page_Power.PHome" %>

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
            <h2 class="irpc-postheader">Home</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-1">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="border-bottom: 1px solid #A7A4AD; padding-bottom: 5px"><span style="font-weight: bold;">PRD Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="90" height="90" style="float: left;" />
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrPrdData" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);"><span style="color: #0505EB;"><asp:Literal ID="ltrPrdData_Last_update" runat="server"></asp:Literal></span></span></p>
                            <p>Update By : <span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrPrdData_Updateby" runat="server"></asp:Literal></span></p>
                            <p><span style="font-weight: bold;"></span></p>
                            <br />
                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="border-bottom: 1px solid #A7A4AD; padding-bottom: 5px"><span style="font-weight: bold;">Test Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="90" height="90" style="float: left;" />
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrTestDataTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><asp:Literal ID="ltrTestDataLastUpdate" runat="server"></asp:Literal></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrTestDataUpdateBy" runat="server"></asp:Literal></span><span style="color: rgb(226, 52, 29); font-weight: bold;"></span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-1">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="border-bottom: 1px solid #A7A4AD; padding-bottom: 5px">Sizing Basis Data</h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="90" height="90" style="float: left;" />
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrSizingBasisDataTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><asp:Literal ID="LtrSizingBasisDataLastUpdate" runat="server"></asp:Literal></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrSizingBasisDataUpdateBy" runat="server"></asp:Literal></span><span style="color: rgb(226, 52, 29); font-weight: bold;"></span></p>
                            <p><span style="font-weight: bold;"><span style="font-style: italic;"></span></span></p>
                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="border-bottom: 1px solid #A7A4AD; padding-bottom: 5px"><span style="font-weight: bold;">Contractor Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="90" height="90" style="float: left;" />
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrContractorDataTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><asp:Literal ID="LtrContractorDataLastUpdate" runat="server"></asp:Literal></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrContractorDataUpdateBy" runat="server"></asp:Literal></span><span style="color: rgb(226, 52, 29); font-weight: bold;"></span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-1">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="padding-bottom: 5px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173);"><span style="font-weight: bold;">Inspector Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;" />
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrInspectorDataTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><asp:Literal ID="LtrInspectorDataLastUpdate" runat="server"></asp:Literal></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrInspectorDataUpdateBy" runat="server"></asp:Literal></span><span style="color: rgb(226, 52, 29); font-weight: bold;"></span></p>
                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="padding-bottom: 5px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173);"><span style="font-weight: bold;">Complex Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;" />
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrComplexDataTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><asp:Literal ID="LtrComplexDataLastUpdate" runat="server"></asp:Literal></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrComplexDataUpdateBy" runat="server"></asp:Literal></span><span style="color: rgb(226, 52, 29); font-weight: bold;"></span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-1">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="padding-bottom: 5px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173);"><span style="font-weight: bold;">Area Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;" />
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrAreaDataTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);"></span><span style="color: rgb(5, 5, 235);"><asp:Literal ID="LtrAreaDataLastUpdate" runat="server"></asp:Literal></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrAreaDataUpdateBy" runat="server"></asp:Literal></span><span style="color: rgb(226, 52, 29); font-weight: bold;"></span></p>
                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="padding-bottom: 5px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173);"><span style="font-weight: bold;">Plant Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;" />
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrPlantDataTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);"></span><span style="color: rgb(5, 5, 235);"><asp:Literal ID="LtrPlantDataLastUpdate" runat="server"></asp:Literal></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrPlantDataUpdateBy" runat="server"></asp:Literal></span><span style="color: rgb(226, 52, 29); font-weight: bold;"></span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-1">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="padding-bottom: 5px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173);"><span style="font-weight: bold;">Service Fluid Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;" />
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrServiceFluidDataTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);"></span><span style="color: rgb(5, 5, 235);"><asp:Literal ID="LtrServiceFluidDataLastUpdate" runat="server"></asp:Literal></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="LtrServiceFluidDataUpdateBy" runat="server"></asp:Literal></span><span style="color: rgb(226, 52, 29); font-weight: bold;"></span></p>
                        </div>
                        <%--<div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="padding-bottom: 5px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173);"><span style="font-weight: bold;">Sizing Basis Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;">20</span><span style="color: #0505EB;">&nbsp;</span>&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);">2</span><span style="color: rgb(5, 5, 235);">1/12/2012 12:00</span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;">rawat.k</span><span style="color: rgb(226, 52, 29); font-weight: bold;"></span></p>
                            <p>
                                <br>
                            </p>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>


    </article>
    </span>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>
