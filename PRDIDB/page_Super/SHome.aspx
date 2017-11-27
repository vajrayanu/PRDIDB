<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperMasterPage.Master" AutoEventWireup="true" CodeBehind="SHome.aspx.cs" Inherits="PRDIDBSystem.page_Super.SHome" %>

<%@ Register TagPrefix="art" TagName="Header" Src="~/web_Control/SHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="Menu" Src="~/web_Control/SMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="Sidebar1" Src="~/web_Control/SSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="Footer" Src="~/web_Control/SFooter.ascx" %>

<%@ Register TagPrefix="art" TagName="UserCounter" Src="~/web_Control/Counter.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadItemsContentPlaceholder" runat="server">
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
            border-top-color: #B7BCBD;
            border-right-color: #B7BCBD;
            border-bottom-color: #B7BCBD;
            border-left-color: #B7BCBD;
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
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <art:Menu ID="DefaultMenuContent" runat="server" />

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    <art:Header ID="DefaultHeaderContent" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" runat="server">
    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" style="text-align: center">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <art:Sidebar1 ID="DefaultSidebar1Content" runat="server" />
   <art:UserCounter ID="UserCounter1" runat="server" />

    <%--<div class="irpc-vmenublock clearfix">
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
    </div>--%>
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
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="90" height="90" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrPRDTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);"><span style="color: #0505EB;"><asp:Literal ID="ltrPRDLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By : <span style="font-weight: bold; color: #0505EB;">
                                <asp:Literal ID="ltrPRDUpdateBy" runat="server"></asp:Literal></span></p>
                            <p><span style="font-weight: bold;"></span></p>
                            <br/>
                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="border-bottom: 1px solid #A7A4AD; padding-bottom: 5px"><span style="font-weight: bold;">Test Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="90" height="90" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrTestTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><span style="color: rgb(5, 5, 235);"><asp:Literal ID="ltrTestLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrTestUpdateBy" runat="server"></asp:Literal></span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-1">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="border-bottom: 1px solid #A7A4AD; padding-bottom: 5px"><span style="font-weight: bold;">User Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="90" height="90" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrUserTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><span style="color: rgb(5, 5, 235);"><asp:Literal ID="ltrUserLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrUserUpdateBy" runat="server"></asp:Literal></span></p>
                            <p><span style="font-weight: bold;"><span style="font-style: italic;"></span></span></p>
                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="border-bottom: 1px solid #A7A4AD; padding-bottom: 5px"><span style="font-weight: bold;">Menufacturer Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="90" height="90" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrMenufacturerTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><span style="color: rgb(5, 5, 235);"><asp:Literal ID="ltrMenufacturerLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrMenufacturerUpdateBy" runat="server"></asp:Literal></span></p>
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
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrInspectorTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><span style="color: rgb(5, 5, 235);"><asp:Literal ID="ltrInspectorLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrInspectorUpdateBy" runat="server"></asp:Literal></span></p>
                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="padding-bottom: 5px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173);"><span style="font-weight: bold;">Complex Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrComplexTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: #0505EB;"><span style="color: rgb(5, 5, 235);"><asp:Literal ID="ltrComplexLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrComplexUpdateBy" runat="server"></asp:Literal></span></p>
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
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrAreaTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);"><span style="color: #0505EB;"><asp:Literal ID="ltrAreaLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrAreaUpdateBy" runat="server"></asp:Literal></span></p>
                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="padding-bottom: 5px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173);"><span style="font-weight: bold;">Plant Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrPlantTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);"><span style="color: #0505EB;"><asp:Literal ID="ltrPlantLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrPlantUpdateBy" runat="server"></asp:Literal></span></p>
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
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrServiceFluidTotal" runat="server"></asp:Literal></span>&nbsp;&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);"><span style="color: #0505EB;"><asp:Literal ID="ltrServiceFluidLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrServiceFluidUpdateBy" runat="server"></asp:Literal></span></p>
                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 50%">
                            <h3 style="padding-bottom: 5px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173);"><span style="font-weight: bold;">Sizing Basis Data</span></h3>
                            <div class="image-caption-wrapper" style="float: left;">
                                <img src="../images/Sweb/database.png" alt="an image" class="irpc-lightbox" width="99" height="99" style="float: left;"/>
                            </div>
                            <p>Total&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrSizingBasisTotal" runat="server"></asp:Literal></span><span style="color: #0505EB;">&nbsp;</span>&nbsp;record</p>
                            <p>Last Update :<span style="font-weight: bold;">&nbsp;<span style="color: rgb(5, 5, 235);"><span style="color: #0505EB;"><asp:Literal ID="ltrSizingBasisLastUpdate" runat="server"></asp:Literal></span></span></span></p>
                            <p>Update By :&nbsp;<span style="font-weight: bold; color: #0505EB;"><asp:Literal ID="ltrSizingBasisUpdateBy" runat="server"></asp:Literal></span></p>
                            <p>
                                <br/>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </article>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>
