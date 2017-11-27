<%@ Page Title="" Language="C#" MasterPageFile="~/design/PowerMasterPage.Master" AutoEventWireup="true" CodeBehind="PPRD_Data.aspx.cs" Inherits="PRDIDBSystem.page_Power.PPRD_Data" StylesheetTheme="siteSkin" %>

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
            margin-bottom: 2px;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-1
        {
            color: #3B3F40;
            border-spacing: 5px 0px;
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
            color: #202222;
            background: #CDD0D0;
            padding-right: 2px;
            padding-left: 2px;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-3
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
            color: #3B3F40;
            padding-right: 2px;
            padding-left: 2px;
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

        .ui-datepicker
        {
            width: 200px;
            font-family: tahoma;
            font-size: 11px;
            text-align: center;
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

    <art:Sidebar1 ID="DefaultSidebar1Content" runat="server" />
    <div class="irpc-vmenublock clearfix">
        <div class="irpc-vmenublockheader">
            <h3 class="t">PRD</h3>
        </div>
        <div class="irpc-vmenublockcontent">
            <ul class="irpc-vmenu">

                <li><a href="<%= ResolveUrl("~/page_Power/PPRD_Overview.aspx") %>">PRD Data</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PPRD_Data.aspx") %>">Search PRD Data</a></li>
                <li><a href="<%= ResolveUrl("~/page_Power/PTest.aspx") %>">Test Data</a></li>


            </ul>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">

    <article class="irpc-post irpc-article">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">PRD DATA</h2>


        </div>

        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 20%">
                        <p style="text-align: center;">Complex</p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 20%">
                        <p style="text-align: center;">Plant</p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 30%">
                        <p style="text-align: center;">Area</p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 25%">
                        <p style="text-align: center;">PRD No.(ID)</p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-1">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-2" style="width: 20%">

                            <asp:ListBox ID="lbComplex" runat="server" AutoPostBack="True" Height="250px" Width="100%" Rows="30" DataTextField="Name" DataValueField="complex_ID" OnSelectedIndexChanged="lbComplex_SelectedIndexChanged"></asp:ListBox>


                        </div>
                        <div class="irpc-layout-cell layout-item-3" style="width: 20%">

                            <asp:ListBox ID="lbPlant" runat="server" AutoPostBack="True" Height="250px" Width="100%" Rows="30" DataTextField="plant_Name" DataValueField="ID" OnSelectedIndexChanged="lbPlant_SelectedIndexChanged"></asp:ListBox>



                        </div>
                        <div class="irpc-layout-cell layout-item-2" style="width: 30%">

                            <asp:ListBox ID="lbArea" runat="server" AutoPostBack="True" Height="250px" Width="100%" Rows="30" DataTextField="area_Name" DataValueField="area_ID" DataMember="area_Name" OnSelectedIndexChanged="lbArea_SelectedIndexChanged"></asp:ListBox>



                        </div>
                        <div class="irpc-layout-cell layout-item-3" style="width: 25%">


                            <asp:ListBox ID="lbPRD" runat="server" AutoPostBack="True" Height="250px" Width="100%" Rows="30" DataTextField="PRD_No" DataValueField="PRD_No" OnSelectedIndexChanged="lbPRD_SelectedIndexChanged"></asp:ListBox>





                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 33%">
                        <p style="text-align: center;">
                            &nbsp;<asp:ImageButton ID="imb" runat="server" SkinID="add1" Height="22px" OnClick="imb_Click" />
                            <br>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 67%; vertical-align: bottom">
                        <p>
                            Search PRD No.&nbsp;<asp:TextBox ID="txtSearchPRD_No" runat="server"></asp:TextBox>
                            &nbsp;<asp:ImageButton ID="imbSearch" runat="server" Height="22px" SkinID="search1" OnClick="imbSearch_Click" />&nbsp;
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 40%; vertical-align: bottom">
                        <p style="text-align: center;">
                            Search PRD List&nbsp;<asp:DropDownList ID="ddlSearchList" runat="server" Height="22px" Width="119px" AutoPostBack="True" OnSelectedIndexChanged="ddlSearchList_SelectedIndexChanged">
                                <asp:ListItem>Serial Number</asp:ListItem>
                                <asp:ListItem>Line Number</asp:ListItem>
                                <asp:ListItem>PRD Model</asp:ListItem>
                                <asp:ListItem>Test PRD</asp:ListItem>
                                <asp:ListItem>Test Year</asp:ListItem>
                                <asp:ListItem>Manufacturer</asp:ListItem>
                            </asp:DropDownList>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 67%; vertical-align: middle">
                        <asp:Panel ID="pSerial" runat="server">
                            Serial No.<asp:TextBox ID="txtSearchBySerial" runat="server"></asp:TextBox>
                            &nbsp;<asp:ImageButton ID="imbSearch_by_Serial" runat="server" Height="22px" SkinID="search1" OnClick="imbSearch_by_Serial_Click" />
                        </asp:Panel>
                        <asp:Panel ID="pLineNo" runat="server">
                            Line No.<asp:TextBox ID="txtSearchByLine" runat="server"></asp:TextBox>
                            &nbsp;<asp:ImageButton ID="imbSearch_by_Line" runat="server" Height="22px" SkinID="search1" OnClick="imbSearch_by_Line_Click" />
                        </asp:Panel>
                        <asp:Panel ID="pModel" runat="server">
                            Select Model&nbsp;<asp:DropDownList ID="ddlModel" runat="server" Height="22px" Width="136px" DataTextField="Model_No" DataValueField="Model_No">
                            </asp:DropDownList>
                            &nbsp;<asp:ImageButton ID="imbSearch_by_Model" runat="server" Height="22px" SkinID="search1" OnClick="imbSearch_by_Model_Click" />
                        </asp:Panel>

                        <asp:Panel ID="pTest" runat="server">
                            Test&nbsp;<asp:DropDownList ID="ddlTest" runat="server" Height="22px" Width="136px">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:ImageButton ID="imbSearch_by_Test" runat="server" Height="22px" SkinID="search1" OnClick="imbSearch_by_Test_Click" />
                        </asp:Panel>
                        <asp:Panel ID="pYear" runat="server">
                            Select Year&nbsp;<asp:DropDownList ID="ddlYear" runat="server" Height="22px" Width="136px">
                            </asp:DropDownList>
                            &nbsp;<asp:ImageButton ID="ImageButton5" runat="server" Height="22px" SkinID="search1" OnClick="ImageButton5_Click" />
                        </asp:Panel>
                        <asp:Panel ID="pContractor" runat="server">
                            Select Manufacturer&nbsp;<asp:DropDownList ID="ddlContractor" runat="server" Height="22px" Width="136px" DataTextField="Contractor_Name" DataValueField="Contractor_ID">
                            </asp:DropDownList>
                            &nbsp;<asp:ImageButton ID="ImageButton6" runat="server" Height="22px" SkinID="search1" OnClick="ImageButton6_Click" />
                        </asp:Panel>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        <p style="text-align: center;">
                            <asp:DropDownList ID="ddlPRD_Data" runat="server" Height="22px" Width="388px" DataTextField="PRDList" DataValueField="PRD_ID">
                            </asp:DropDownList>
                            &nbsp;<asp:Button ID="btnSelectPRD" runat="server" Height="22px" Text="Select PRD" OnClick="btnSelectPRD_Click" />
                            &nbsp;<asp:ImageButton ID="imbExport_to_Excel" runat="server" Height="15px" SkinID="Export_to_Excel1" OnClick="imbExport_to_Excel_Click" />
                            <br />
                        </p>
                    </div>
                </div>
            </div>
            <asp:Panel ID="pShowData" runat="server">
                <div class="irpc-content-layout">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell" style="width: 100%; text-align: center;">
                            <p>
                                <asp:HyperLink ID="hlTestData" runat="server" ForeColor="#3333CC" Target="_blank">Test Data</asp:HyperLink>
                                &nbsp;
                                <asp:LinkButton ID="lbtnHistoryCard" runat="server" OnClick="lbtnHistoryCard_Click">History Card</asp:LinkButton>&nbsp;&nbsp;&nbsp;
                                Memo<span style="font-weight: bold; color:red;">
                                <asp:Literal ID="ltrMemoTotal" runat="server"></asp:Literal>
                                &nbsp;&nbsp;</span>Files
                            </p>
                        </div>
                    </div>
                </div>
                <div class="irpc-content-layout-wrapper layout-item-0">
                    <div class="irpc-content-layout">
                        <div class="irpc-content-layout-row">
                            <div class="irpc-layout-cell layout-item-2" style="width: 100%; text-align: center;">


                                <asp:Button ID="btnProcess" runat="server" Text="Process Data" Height="25px" OnClick="btnProcess_Click" />
                                <asp:Button ID="btnMaintenance" runat="server" Text="Maintenance Data" Height="25px" OnClick="btnMaintenance_Click" />
                                <asp:Button ID="btnInstallation" runat="server" Text="Installation Data" Height="25px" OnClick="btnInstallation_Click" />
                                <asp:Button ID="btnAttachment" runat="server" Text="Attachment" Height="25px" OnClick="btnAttachment_Click" />


                                <asp:Button ID="btnInspec" runat="server" Height="25px" Text="Inspection Data" OnClick="btnInspec_Click" />


                                &nbsp;
                            </div>
                        </div>
                    </div>
                </div>
                <div class="irpc-content-layout">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell" style="width: 100%">
                            <asp:Panel ID="pProcessData" runat="server">
                                <table class="irpc-article" style="width: 100%; background-color: bisque;">
                                    <tbody>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">PRD No.(ID)</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtPRD_ID" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Area</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:DropDownList ID="ddlArea" runat="server" Height="22px" Width="100%" DataTextField="Name" DataValueField="area_ID">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Line / Equip No.</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtLineNo" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Service Fluid</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:DropDownList ID="ddlServiceFluid" runat="server" Height="22px" Width="100%" DataTextField="service_Fluid_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Isolation Valve</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:CheckBox ID="chkIsolution" runat="server" />
                                                <br />
                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Sizing Basis</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:DropDownList ID="ddlSizingBasis" runat="server" Height="22px" Width="100%" DataTextField="Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Registration Date</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; vertical-align: middle" class="">
                                                <asp:TextBox ID="txtRegistration_Date" runat="server" Wrap="False"></asp:TextBox>

                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Cold Diff-Test Press.<br>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtColdDiffPress" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlPressUnit2" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                         <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Record By</td>
                                            <td style="text-align: -webkit-auto; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtRecord" runat="server"></asp:TextBox>
                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class=""><span style="text-align: right;">Set Press.</span></td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtSetPress" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlPressUnit4" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>


                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Effective Orifice Size</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtEffecSize" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Blow-Off Temp.</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtBlow_Off_Temp" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlTempUnit3" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Max Operating Temp.</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtMaxOperatingTemp" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlTempUnit1" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Capacity (Required)</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtCapacityRequired" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlCapacityUnit1" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Max Operating Press.&nbsp;</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtMaxOperatingPress" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlPressUnit1" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Capacity (Relieving)</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtCapacityRelieving" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlCapacityUnit2" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Operating Temp.</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtOperatingTemp" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlTempUnit2" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Su. Back Press. (Constant)<br />
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtBackPressConstant" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlPressUnit5" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Operating Press.</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtOperatingPress" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlPressUnit3" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class=""><span style="text-align: right;">Su. Back Press. (Variable)</span></td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtBackPressVariable" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlPressUnit6" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Orifice Area (Required)</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <asp:TextBox ID="txtOrificeAreaRequired" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlAreaUnit1" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Built-up Back Press. (Constant)</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <asp:TextBox ID="txtBuilt_up_BackPressConstant" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlPressUnit7" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Orifice Area (selected)</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <asp:TextBox ID="txtOrificeAreaselected" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlAreaUnit2" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class=""><span style="text-align: right;">Built-up Back Press. (Variable)</span></td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <asp:TextBox ID="txtBuilt_up_BackPressVariable" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlPressUnit8" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                        <tr>
                                            <td class="" style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                            <td class="" style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                            <td class="" style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                            <td class="" style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="pMaintenance" runat="server">
                                <table class="irpc-article" style="width: 100%; background-color: aliceblue;">
                                    <tbody>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Serial No.</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtSerial_No" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">PRD Type</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:DropDownList ID="ddlPRD_Type" runat="server" Height="22px" Width="100%" DataTextField="description" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Model No.</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtModel_No" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Valve Type</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:DropDownList ID="ddlValve_Type" runat="server" Height="22px" Width="100%" DataTextField="Name" DataValueField="area_ID">
                                                    <asp:ListItem>N/A</asp:ListItem>
                                                    <asp:ListItem>Soft Seat</asp:ListItem>
                                                    <asp:ListItem>Metal Seat</asp:ListItem>
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">P&amp;ID</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtP_ID" runat="server"></asp:TextBox>
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Manufacturer</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:DropDownList ID="ddlManufacturer" runat="server" Height="22px" Width="100%" DataTextField="Contractor_Name" DataValueField="Contractor_ID">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Spring No.<br>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtSpring_No" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Referance By<br>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">

                                                <asp:DropDownList ID="ddlReferance_By" runat="server" Height="22px" Width="100%">
                                                    <asp:ListItem Value="N/A">N/A</asp:ListItem>
                                                    <asp:ListItem Value="Code">Code</asp:ListItem>
                                                    <asp:ListItem Value="Law">Law</asp:ListItem>
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Body &amp; Bonnet Merial</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtBody_Bonnet_Merial" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Spring Material<br>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtSpring_Material" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Inspec. Frequency (Year)<br>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtInspec_Frequency" runat="server" Width="65px"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Nozzle&amp;Disc Insert Mat.<br>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtNozzle_Disc" runat="server"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Norminal Size (Inlet)</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtNorminal_Size_Inlet" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlSizeUnit1" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Norminal Size (Outlet)<br>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtNorminal_Size_Outlet" runat="server" Width="65px"></asp:TextBox>
                                                <asp:DropDownList ID="ddlSizeUnit2" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Press. Rating (Inlet)</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtPressRating_Inlet" runat="server" Width="65px"></asp:TextBox>
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Press. Rating (Outlet)<br>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtPressRating_Outlet" runat="server" Width="65px"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Flange Face (Inlet)</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtFlangeFace_Inlet" runat="server" Width="65px"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Flange Face (Outlet)<br>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <asp:TextBox ID="txtFlangeFace_Outlet" runat="server" Width="65px"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">&nbsp;</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <br />
                                            </td>
                                            <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">&nbsp;</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                                <br />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="pInstallation" runat="server">
                                <table class="irpc-article" style="width: 100%; background-color: cornsilk;">
                                    <tbody>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style5">Location</td>
                                            <td style="border-width: 0px;" class="auto-style5">
                                                <asp:DropDownList ID="ddlLocation" runat="server" Height="22px" Width="100%">
                                                    <asp:ListItem>N/A</asp:ListItem>
                                                    <asp:ListItem>On_line</asp:ListItem>
                                                    <asp:ListItem>in_Store</asp:ListItem>
                                                </asp:DropDownList>

                                            </td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style5">Responsible Plant By
                                            </td>
                                            <td style="border-width: 0px;" class="auto-style5">
                                                <asp:TextBox ID="txtResponsible" runat="server" Enabled="False"></asp:TextBox>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style5">Condition For Mantenance<span style="line-height: 16px; text-align: left;"></span></td>
                                            <td style="border-width: 0px;" class="auto-style5">
                                                <asp:DropDownList ID="ddlCondition" runat="server" Height="22px" Width="100%">
                                                    <asp:ListItem>N/A</asp:ListItem>
                                                    <asp:ListItem>On_stream</asp:ListItem>
                                                    <asp:ListItem>Shut_down</asp:ListItem>
                                                    <asp:ListItem>Shut_down_S</asp:ListItem>
                                                    <asp:ListItem>Turn_around</asp:ListItem>
                                                </asp:DropDownList>

                                            </td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style5">Quantity (M)
                                            </td>
                                            <td style="border-width: 0px;" class="auto-style5">
                                                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style5">Type Colour
                                    <td style="border-width: 0px;" class="auto-style5">
                                        <asp:TextBox ID="txtType_Colour" runat="server"></asp:TextBox>

                                    </td>
                                                <td style="border-width: 0px; text-align: right;" class="auto-style5">High Scaffolding
                                                </td>
                                                <td style="border-width: 0px;" class="auto-style5">
                                                    <asp:TextBox ID="txtHigh_Scaffolding" runat="server"></asp:TextBox>

                                                </td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style5">Type Insulation</td>
                                            <td style="border-width: 0px;" class="auto-style5">
                                                <asp:TextBox ID="txtType_Insulation" runat="server"></asp:TextBox>

                                            </td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style5">Crane Need
                                            </td>
                                            <td style="border-width: 0px; text-align: -webkit-auto;" class="auto-style5">
                                                <asp:CheckBox ID="chkCrane_Need" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5" style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Function Location</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                                <asp:TextBox ID="txtFunction_Location" runat="server"></asp:TextBox>

                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Status</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                                <asp:RadioButton ID="radActive" runat="server" GroupName="S" Text="Active" />
                                                &nbsp;<asp:RadioButton ID="radCancel" runat="server" GroupName="S" Text="Cancel" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style5" style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Type Gasket (Inlet)
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                                <asp:TextBox ID="txtType_Gasket_Inlet" runat="server"></asp:TextBox>

                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Type Gasket (Outlet)
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                                <asp:TextBox ID="txtType_Gasket_Outlet" runat="server"></asp:TextBox>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style4">Size Gasket (Inlet)</td>
                                            <td style="border-width: 0px; text-align: -webkit-auto;" class="auto-style4">
                                                <asp:TextBox ID="txtSize_Gasket_Inlet" runat="server" Width="65px"></asp:TextBox>
                                            </td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style4">Size Gasket (Outlet)
                                            </td>
                                            <td style="border-width: 0px;" class="auto-style4">
                                                <asp:TextBox ID="txtSize_Gasket_Outlet" runat="server" Width="65px"></asp:TextBox>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style5"><span style="text-align: right;">Material Gasket (Inlet)</span>
                                            </td>
                                            <td style="border-width: 0px;" class="auto-style5">

                                                <asp:TextBox ID="txtMaterial_Gasket_Inlet" runat="server" Width="65px"></asp:TextBox>

                                            </td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style5">Material Gasket (Outlet)
                                            </td>
                                            <td style="border-width: 0px;" class="auto-style5">

                                                <asp:TextBox ID="txtMaterial_Gasket_Outlet" runat="server" Width="65px"></asp:TextBox>


                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><span style="text-align: right;">Size Bolt (Inlet)</span>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">

                                                <asp:TextBox ID="txtSize_Bolt_Inlet" runat="server" Width="65px"></asp:TextBox>


                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><span style="text-align: right;">Size Bolt (Outlet)</span>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">

                                                <asp:TextBox ID="txtSize_Bolt_Outlet" runat="server" Width="65px"></asp:TextBox>


                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Amout Bolt (Inlet)</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">

                                                <asp:TextBox ID="txtAmout_Bolt_Inlet" runat="server" Width="65px"></asp:TextBox>


                                            </td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><span style="text-align: right;">Amout Bolt (Outlet)</span>
                                            </td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">

                                                <asp:TextBox ID="txtAmout_Bolt_Outlet" runat="server" Width="65px"></asp:TextBox>


                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                            <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </asp:Panel>
                            <asp:Panel ID="pAttachment" runat="server">
                                <table class="irpc-article" style="width: 100%; background-color: aliceblue;">
                                    <tbody>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style1">
                                                Remark</td>
                                            <td style="border-width: 0px;" class="auto-style2">
                                                <asp:TextBox ID="txtRemark" runat="server" Height="97px" TextMode="MultiLine" Width="305px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1" style="border-width: 0px;">
                                               
                                            </td>
                                            <td class="auto-style2" style="border-width: 0px;">
                                                <asp:CheckBox ID="chkMemo" runat="server" Text="Memo" />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: center;" class="auto-style3" colspan="2">

                                                <asp:RadioButtonList ID="radlPoint" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                                    <asp:ListItem Selected="True">Set Point</asp:ListItem>
                                                    <asp:ListItem>Plant</asp:ListItem>
                                                    <asp:ListItem>Line No.</asp:ListItem>
                                                </asp:RadioButtonList>

                                                <asp:FileUpload ID="fulAttachment" runat="server" Width="260px" Height="22px" AllowMultiple="True" />
                                                &nbsp;&nbsp;<asp:Button ID="btnAdd_File" runat="server" Height="29px" OnClick="btnAdd_File_Click" Text="Add File" Width="59px" />
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style4" aria-readonly="True">Note Memo<br>
                                            </td>
                                            <td style="border-width: 0px;" class="auto-style5">
                                                <asp:TextBox ID="txtNoteMemo" runat="server" Height="88px" TextMode="MultiLine" Width="305px"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; width: 100%;" colspan="2" class="">

                                                <asp:GridView ID="gvFile" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="2" ForeColor="Black" GridLines="None" PageSize="20" Style="text-align: left" Width="100%" HorizontalAlign="Center" AllowPaging="True" ShowHeader="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" OnPageIndexChanging="gvFile_PageIndexChanging">
                                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="No">
                                                            <ItemTemplate>
                                                                <asp:Literal ID="ltrNo" runat="server"></asp:Literal>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" Width="7%" />
                                                            <ItemStyle HorizontalAlign="Left" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="File Name">
                                                            <ItemTemplate>
                                                                <asp:Literal ID="ltrMemo" runat="server"></asp:Literal>
                                                                &nbsp;
                                                        <asp:Literal ID="ltrPoint" runat="server"></asp:Literal>
                                                                &nbsp;
                                                        <asp:Literal ID="ltrFile" runat="server"></asp:Literal>
                                                                <br />
                                                                Note Memo :
                                                        <asp:Literal ID="ltrNote" runat="server"></asp:Literal>
                                                            </ItemTemplate>
                                                            <HeaderStyle Width="85%" />
                                                            <ItemStyle HorizontalAlign="Left" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Remove">
                                                            <ItemTemplate>
                                                                <asp:ImageButton ID="imbRemove" runat="server" Height="22px" ImageUrl="~/images/icon/remove.png" OnClientClick="if(confirm('Do you want to remove data?')== false) return false;" OnClick="imbRemove_Click" />
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                                            <ItemStyle HorizontalAlign="Center" />
                                                        </asp:TemplateField>

                                                        <asp:BoundField DataField="file_ID">
                                                            <ControlStyle CssClass="irpc-article-HideColumn" />
                                                            <FooterStyle CssClass="irpc-article-HideColumn" />
                                                            <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                            <ItemStyle CssClass="irpc-article-HideColumn" VerticalAlign="Middle" />


                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="memo">
                                                            <ControlStyle CssClass="irpc-article-HideColumn" />
                                                            <FooterStyle CssClass="irpc-article-HideColumn" />
                                                            <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                            <ItemStyle CssClass="irpc-article-HideColumn" VerticalAlign="Middle" />


                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Point">
                                                            <ControlStyle CssClass="irpc-article-HideColumn" />
                                                            <FooterStyle CssClass="irpc-article-HideColumn" />
                                                            <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                            <ItemStyle CssClass="irpc-article-HideColumn" VerticalAlign="Middle" />


                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="path_File">
                                                            <ControlStyle CssClass="irpc-article-HideColumn" />
                                                            <FooterStyle CssClass="irpc-article-HideColumn" />
                                                            <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                            <ItemStyle CssClass="irpc-article-HideColumn" />
                                                        </asp:BoundField>

                                                        <asp:BoundField DataField="Note_memo">
                                                            <ControlStyle CssClass="irpc-article-HideColumn" />
                                                            <FooterStyle CssClass="irpc-article-HideColumn" />
                                                            <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                            <ItemStyle CssClass="irpc-article-HideColumn" />
                                                        </asp:BoundField>

                                                        <asp:BoundField DataField="File_Name">
                                                            <ControlStyle CssClass="irpc-article-HideColumn" />
                                                            <FooterStyle CssClass="irpc-article-HideColumn" />
                                                            <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                            <ItemStyle CssClass="irpc-article-HideColumn" />
                                                        </asp:BoundField>



                                                    </Columns>
                                                    <FooterStyle BackColor="Tan" />
                                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                                </asp:GridView>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </asp:Panel>

                            <asp:Panel ID="pInspection" runat="server">
                                <table class="irpc-article" style="width: 100%; background-color: cornsilk;">
                                    <tbody>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style15">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style11">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style5">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style15">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style11">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style5">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15" style="border-width: 0px; text-align: right;">Last Test</td>
                                            <td style="border-width: 0px;" class="auto-style11">
                                                <asp:TextBox ID="txtLastTest" runat="server" Enabled="False" Style="text-align: center"></asp:TextBox>

                                            </td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">Result</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                                <asp:TextBox ID="txtResult" runat="server" Enabled="False" Style="text-align: center"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style15" style="border-width: 0px; text-align: right;">Interval Time (Year)</td>
                                            <td style="border-width: 0px;" class="auto-style11">
                                                <asp:TextBox ID="txtInterval" runat="server" Enabled="False" Style="text-align: center"></asp:TextBox>
                                            </td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">Next Test</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                                <asp:TextBox ID="txtNextTest" runat="server" Enabled="False" Style="text-align: center"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style15">&nbsp;<td style="border-width: 0px;" class="auto-style11">&nbsp;</td>
                                                <td style="border-width: 0px; text-align: right;" class="auto-style14">&nbsp;</td>
                                                <td style="border-width: 0px;" class="auto-style5">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style15">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style11">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: -webkit-auto;" class="auto-style5">&nbsp;</td>
                                        </tr>


                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style15">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: -webkit-auto;" class="auto-style11">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style4">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style15">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style11">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style5">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style15">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style11">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">&nbsp;</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style15">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style11">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">&nbsp;</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style15">&nbsp;</td>
                                            <td style="border-width: 0px;" class="auto-style11">&nbsp;</td>
                                            <td style="border-width: 0px; text-align: right;" class="auto-style14">&nbsp;</td>
                                            <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </asp:Panel>
                        </div>
                    </div>
                </div>
                <div style="text-align: center">
                </div>
            </asp:Panel>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        <p>
                        </p>
                    </div>
                </div>
            </div>
        </div>


    </article>

</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>
