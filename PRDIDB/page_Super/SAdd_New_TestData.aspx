<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperMasterPage.Master" AutoEventWireup="true" CodeBehind="SAdd_New_TestData.aspx.cs" Inherits="PRDIDBSystem.page_Super.SAdd_New_TestData" StylesheetTheme="siteSkin" %>

<%@ Register TagPrefix="art" TagName="Header" Src="~/web_Control/SHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="Menu" Src="~/web_Control/SMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="Sidebar1" Src="~/web_Control/SSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="Footer" Src="~/web_Control/SFooter.ascx" %>



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
            border-top-width: 1px;
            border-top-style: solid;
            border-top-color: #B7BCBD;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-2
        {
            color: #272A2A;
            background: #E9F6EF;
            padding-right: 10px;
            padding-left: 10px;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-3
        {
            color: #3B3F40;
            padding-right: 10px;
            padding-left: 10px;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-4
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
            color: #272A2A;
            background: #E9F6EF;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-5
        {
            color: #272A2A;
            padding-right: 10px;
            padding-left: 10px;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-6
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

        .auto-style2
        {
            width: 25%;
            height: 26px;
        }

        .auto-style6
        {
            width: 25%;
            height: 4px;
            text-align: left;
        }

        .auto-style7
        {
            width: 25%;
            height: 4px;
        }

        .ui-datepicker
        {
            width: 200px;
            font-family: tahoma;
            font-size: 11px;
            /*text-align: center;*/
        }

        .auto-style8
        {
            height: 26px;
        }
        .auto-style9
        {
            font-weight: bold;
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
                    <asp:LinkButton ID="ibtBack" runat="server" OnClick="ibtBack_Click">Back</asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Close</asp:LinkButton></li>
            </ul>
        </div>
    </nav>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    <art:Header ID="DefaultHeaderContent" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" runat="server">

    <div class="irpc-post irpc-article">

        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">PRD Data</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <span style="color: rgb(39, 42, 42); text-align: left;">Plant : </span><span style="font-weight: bold;">
                <asp:Literal ID="ltrPlant" runat="server"></asp:Literal></span><br />
            <span style="color: rgb(39, 42, 42);">Area : </span><span style="font-weight: bold;">
                <asp:Literal ID="ltrArea" runat="server"></asp:Literal></span><br />
            <span style="color: rgb(39, 42, 42);">PRD No. : </span><span style="font-weight: bold;">
                <asp:Literal ID="ltrPRDNo" runat="server"></asp:Literal></span><br />
            <span style="color: rgb(39, 42, 42);">Searial No. : </span><span style="font-weight: bold;">
                <asp:Literal ID="ltrSearial" runat="server"></asp:Literal></span>

        </div>
    </div>
    <%--<art:Sidebar1 ID="DefaultSidebar1Content" runat="server" />--%>
   <%-- <div class="irpc-block clearfix">
        <div class="irpc-blockheader">
            <h3 class="t">Test Data</h3>
        </div>
        <div class="irpc-blockcontent">
            <p style="text-align: left;">Total <span style="font-weight: bold;">100</span> record</p>
            <p style="text-align: left;">Last update <span style="font-weight: bold;">00/00/0000 00:00&nbsp;</span></p>
            <p style="text-align: left;">Update by <span style="font-weight: bold;">XXX XXX</span></p>
        </div>
    </div>
    <div class="irpc-vmenublock clearfix">
        <div class="irpc-vmenublockheader">
            <h3 class="t">Vertical Menu</h3>
        </div>
        <div class="irpc-vmenublockcontent">
            <ul class="irpc-vmenu">

                <li><a href="#">xxxx</a></li>
                <li><a href="#">xxxx</a></li>


            </ul>

        </div>
    </div>--%>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <article class="irpc-post irpc-article">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">Add Test PRD Data</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">

            <%--<div class="irpc-content-layout-br layout-item-1">
            </div>--%>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                        <p style="text-align: center;">
                            <span style="font-weight: bold;">Test ID&nbsp;</span><asp:TextBox ID="txtTest_ID" runat="server" BackColor="#00FFCC" Enabled="False"></asp:TextBox>
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-4">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-5" style="width: 100%">
                            <p style="text-align: center;">
                                <span style="font-weight: bold;">INITIAL DATA</span><br/>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                        <table class="irpc-article" style="width: 100%;">
                            <tbody>
                                <tr>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">W/O</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtWO" runat="server"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Pop Pressure</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtPop_Press" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlPressUnit1" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Work Type</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:DropDownList ID="ddlTest_Type" runat="server" Height="22px" Width="145px">
                                            <asp:ListItem>N/A</asp:ListItem>
                                            <asp:ListItem>New Valve</asp:ListItem>
                                            <asp:ListItem>Unplan</asp:ListItem>
                                            <asp:ListItem>CM</asp:ListItem>
                                            <asp:ListItem>PM</asp:ListItem>
                                            <asp:ListItem>PMC</asp:ListItem>
                                            <asp:ListItem>SD</asp:ListItem>
                                            <asp:ListItem>TA</asp:ListItem>
                                            <asp:ListItem>LAW</asp:ListItem>
                                        </asp:DropDownList>

                                    </td>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Leak</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtLeak" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlLeakUnit1" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br />
                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br />
                                    </td>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br />
                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-4">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-5" style="width: 100%">
                            <p style="text-align: center;"><span style="font-weight: bold;">FINAL DATA</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                        <table class="irpc-article" style="width: 100%;">
                            <tbody>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">W/O REQ Date</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtWO_REQ_DatePicker" runat="server" CausesValidation="True"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Pop Pressure</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtPop_Press2" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlPressUnit2" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Requester</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtRequester" runat="server"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Tight Test Pressure</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtTight_Test_Pressure" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlPressUnit3" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px; text-align: right;" class="auto-style2">Shop Test</td>
                                    <td style="border-width: 0px;" class="auto-style2">
                                        <asp:TextBox ID="txtShop_Test" runat="server"></asp:TextBox>
                                        <%--<asp:DropDownList ID="ddlShop_Test" runat="server" Height="22px" Width="130px">
                                            <asp:ListItem>N/A</asp:ListItem>
                                            <asp:ListItem>TNK</asp:ListItem>
                                            <asp:ListItem>DELTA</asp:ListItem>
                                            <asp:ListItem>SB</asp:ListItem>
                                            <asp:ListItem>LEO</asp:ListItem>
                                            <asp:ListItem>ST</asp:ListItem>
                                            <asp:ListItem>PM VALVE</asp:ListItem>
                                            <asp:ListItem>MASTER PAC</asp:ListItem>
                                        </asp:DropDownList>--%>

                                        <br />
                                    </td>
                                    <td style="border-width: 0px; text-align: right;" class="auto-style2">Leak</td>
                                    <td style="border-width: 0px;" class="auto-style2">
                                        <asp:TextBox ID="txtLeak2" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlLeakUnit2" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Set Pressure</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtSet_Pressure" runat="server" BackColor="#00FFCC" Enabled="False"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Reseat Pressure</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtReseat_Pressure" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlPressUnit4" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px; text-align: right;" class="auto-style8"><span style="line-height: 16px;">Cold Diff Test</span></td>
                                    <td style="border-width: 0px;" class="auto-style8">
                                        <asp:TextBox ID="txtCold_diff_Test" runat="server" BackColor="#00FFCC" Enabled="False"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td style="border-width: 0px; text-align: right;" class="auto-style8">Test Result</td>
                                    <td style="border-width: 0px;" class="auto-style8">
                                        <asp:DropDownList ID="ddlTest_Result" runat="server" Height="22px" Width="130px" AutoPostBack="True" OnSelectedIndexChanged="ddlTest_Result_SelectedIndexChanged">
                                            <asp:ListItem>pass</asp:ListItem>
                                            <asp:ListItem>fail</asp:ListItem>
                                        </asp:DropDownList>

                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Report No.</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtReport_No" runat="server"></asp:TextBox>
                                        <br/>
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Reccomend</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtReccomend" runat="server" ></asp:TextBox>
                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Reference No.</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtReference_No" runat="server"></asp:TextBox>
                                        <br/>
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Re-Test</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtRe_Test" runat="server" TextMode="Number"></asp:TextBox>
                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Test Medium</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:DropDownList ID="ddlTest_Medium" runat="server" Height="22px" Width="130px">
                                            <asp:ListItem>N/A</asp:ListItem>
                                            <asp:ListItem>Nitro</asp:ListItem>
                                            <asp:ListItem>Water</asp:ListItem>
                                            <asp:ListItem>Air</asp:ListItem>
                                            <asp:ListItem>Steam</asp:ListItem>
                                            
                                        </asp:DropDownList>

                                        <br/>
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Inspector</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:DropDownList ID="ddlInspector" runat="server" Height="22px" Width="130px" DataTextField="inspector_Name" DataValueField="inspector_ID">
                                        </asp:DropDownList>

                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Seal No.</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtSeal_No" runat="server"></asp:TextBox>
                                        <br/>
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Test Date</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtTest_DatePicker" runat="server"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Inspection Finding</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:DropDownList ID="ddlCase" runat="server" Height="22px" Width="145px">
                                            <asp:ListItem>N/A</asp:ListItem>
                                            <asp:ListItem>ไม่ระบุ</asp:ListItem>
                                            <asp:ListItem>ปกติ</asp:ListItem>
                                            <asp:ListItem>มีการขัดตัวจาก Fouling ในระบบ</asp:ListItem>
                                            <asp:ListItem>มีการติดค้างจาก Fouling ในระบบ</asp:ListItem>
                                        </asp:DropDownList>

                                        <br />
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Recommendation for next inspection</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:DropDownList ID="ddlReccommend" runat="server" Height="22px" Width="145px">
                                            <asp:ListItem>N/A</asp:ListItem>
                                            <asp:ListItem>ไม่ระบุ</asp:ListItem>
                                            <asp:ListItem>ควรแก้ไขปัญหา Fouling ในระบบ</asp:ListItem>
                                            <asp:ListItem>ควรแก้ไข Interval Time และ ตรวจสอบค่าความแข็งของสปริงเพื่อเก็บข้อมูล</asp:ListItem>
                                            <asp:ListItem>การตรวจสอบครั้งต่อไปควรตรวจสอบค่าความแข็งของสปริงเพื่อเก็บข้อมูล</asp:ListItem>
                                        </asp:DropDownList>

                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br/>
                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br/>
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                
                                        <%--Latest Test Data of the Year--%>
                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                               
                                        <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderStyle="None" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                            <asp:ListItem Value="1">Yes</asp:ListItem>
                                            <asp:ListItem Value="0">No</asp:ListItem>
                                        </asp:RadioButtonList>--%>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>


            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-4">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-5" style="width: 100%">
                            <p style="text-align: center;"><span style="font-weight: bold;">Recondition</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-6">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                            <table class="irpc-article" style="width: 100%;">
                                <tr>
                                    <td rowspan="2" style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>Part</b><br />
                                    </td>
                                    <td class="auto-style9" colspan="5" style="border-width: 0px; text-align: center; background-color: chocolate; color: #FFFFFF;">Maintenance &amp; Inspection</td>
                                    <td class="auto-style9" colspan="3" style="border-width: 0px; text-align: center; background-color:greenyellow">Maintenance</td>
                                    <td rowspan="2" style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color:blue; color: #FFFFFF;"><b>Comment to Replace</b></td>
                                </tr>
                                <tr>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color:chocolate; color: #FFFFFF;"><b>Good</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate; color: #FFFFFF;"><b>Rust</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate; color: #FFFFFF;"><b>Scratch</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate; color: #FFFFFF;"><b>Crack</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate; color: #FFFFFF;"><b>Damage</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;"><b>Reused</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;"><b>Repair</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;"><b>Replace</b></td>
                                </tr>
                                <tr style="vertical-align: bottom;">
                                    <td style="text-align: left; width: 10%; vertical-align: bottom; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>Body(Cylinder)</b></td>
                                    <td style="width: 10%; text-align: center; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radGood1" runat="server" GroupName="A" />
                                    </td>
                                    <td style="width: 10%; text-align: center; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRust1" runat="server" GroupName="A" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radScratch1" runat="server" GroupName="A" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radCrack1" runat="server" GroupName="A" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radDamage1" runat="server" GroupName="A" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReuse1" runat="server" GroupName="J" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRepair1" runat="server" GroupName="J" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReplace1" runat="server" GroupName="J" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:CheckBox ID="chkSpare1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px; text-align: left;"><b>Bonnet &amp; Cap</b></td>
                                    <td style="border-width: 0px; text-align: center; background-color: chocolate;">
                                        <asp:RadioButton ID="radGood2" runat="server" GroupName="B" />
                                    </td>
                                    <td style="border-width: 0px; text-align: center; background-color: chocolate;">
                                        <asp:RadioButton ID="radRust2" runat="server" GroupName="B" />
                                    </td>
                                    <td style="border-width: 0px; text-align: center; background-color: chocolate;">
                                        <asp:RadioButton ID="radScratch2" runat="server" GroupName="B" />
                                    </td>
                                    <td style="border-width: 0px; text-align: center; background-color: chocolate;">
                                        <asp:RadioButton ID="radCrack2" runat="server" GroupName="B" />
                                    </td>
                                    <td style="border-width: 0px; text-align: center; background-color: chocolate;">
                                        <asp:RadioButton ID="radDamage2" runat="server" GroupName="B" />
                                    </td>
                                    <td style="border-width: 0px; text-align: center; background-color: greenyellow;">
                                        <asp:RadioButton ID="radReuse2" runat="server" GroupName="K" />
                                    </td>
                                    <td style="border-width: 0px; text-align: center; background-color: greenyellow;">
                                        <asp:RadioButton ID="radRepair2" runat="server" GroupName="K" />
                                    </td>
                                    <td style="border-width: 0px; text-align: center; background-color: greenyellow;">
                                        <asp:RadioButton ID="radReplace2" runat="server" GroupName="K" />
                                    </td>
                                    <td style="border-width: 0px; text-align: center; background-color: blue;">
                                        <asp:CheckBox ID="chkSpare2" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>Nozzle(Base)</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radGood3" runat="server" GroupName="C" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRust3" runat="server" GroupName="C" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radScratch3" runat="server" GroupName="C" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radCrack3" runat="server" GroupName="C" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radDamage3" runat="server" GroupName="C" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReuse3" runat="server" GroupName="L" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRepair3" runat="server" GroupName="L" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReplace3" runat="server" GroupName="L" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:CheckBox ID="chkSpare3" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>Dist Inser</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radGood4" runat="server" GroupName="D" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radRust4" runat="server" GroupName="D" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radScratch4" runat="server" GroupName="D" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radCrack4" runat="server" GroupName="D" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radDamage4" runat="server" GroupName="D" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;">
                                        <asp:RadioButton ID="radReuse4" runat="server" GroupName="M" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;">
                                        <asp:RadioButton ID="radRepair4" runat="server" GroupName="M" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;">
                                        <asp:RadioButton ID="radReplace4" runat="server" GroupName="M" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: blue;">
                                        <asp:CheckBox ID="chkSpare4" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>Dist Holder</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radGood5" runat="server" GroupName="E" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRust5" runat="server" GroupName="E" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radScratch5" runat="server" GroupName="E" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radCrack5" runat="server" GroupName="E" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radDamage5" runat="server" GroupName="E" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReuse5" runat="server" GroupName="N" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRepair5" runat="server" GroupName="N" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReplace5" runat="server" GroupName="N" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:CheckBox ID="chkSpare5" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>Giude</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radGood6" runat="server" GroupName="F" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radRust6" runat="server" GroupName="F" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radScratch6" runat="server" GroupName="F" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radCrack6" runat="server" GroupName="F" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radDamage6" runat="server" GroupName="F" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;">
                                        <asp:RadioButton ID="radReuse6" runat="server" GroupName="O" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;">
                                        <asp:RadioButton ID="radRepair6" runat="server" GroupName="O" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;">
                                        <asp:RadioButton ID="radReplace6" runat="server" GroupName="O" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: blue;">
                                        <asp:CheckBox ID="chkSpare6" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>Spindle</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radGood7" runat="server" GroupName="G" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRust7" runat="server" GroupName="G" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radScratch7" runat="server" GroupName="G" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radCrack7" runat="server" GroupName="G" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radDamage7" runat="server" GroupName="G" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReuse7" runat="server" GroupName="P" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRepair7" runat="server" GroupName="P" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReplace7" runat="server" GroupName="P" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:CheckBox ID="chkSpare7" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>Spring</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radGood8" runat="server" GroupName="H" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radRust8" runat="server" GroupName="H" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radScratch8" runat="server" GroupName="H" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radCrack8" runat="server" GroupName="H" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: chocolate;">
                                        <asp:RadioButton ID="radDamage8" runat="server" GroupName="H" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;">
                                        <asp:RadioButton ID="radReuse8" runat="server" GroupName="Q" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;">
                                        <asp:RadioButton ID="radRepair8" runat="server" GroupName="Q" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: greenyellow;">
                                        <asp:RadioButton ID="radReplace8" runat="server" GroupName="Q" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; background-color: blue;">
                                        <asp:CheckBox ID="chkSpare8" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>Bellow(if any)</b></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radGood9" runat="server" GroupName="I" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRust9" runat="server" GroupName="I" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radScratch9" runat="server" GroupName="I" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radCrack9" runat="server" GroupName="I" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radDamage9" runat="server" GroupName="I" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReuse9" runat="server" GroupName="R" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radRepair9" runat="server" GroupName="R" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:RadioButton ID="radReplace9" runat="server" GroupName="R" />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:CheckBox ID="chkSpare9" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br />
                                    </td>
                                    <td style="text-align: center; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                        <table class="irpc-article" style="width: 100%;">
                            <tbody>
                                <tr>
                                    <td style="border-width: 0px; text-align: right;" class="auto-style7"></td>
                                    <td style="border-width: 0px; text-align: left;" class="auto-style7">As Found</td>
                                    <td style="border-width: 0px;" class="auto-style6">After Repair</td>
                                    <td style="border-width: 0px; text-align: center;" class="auto-style7"></td>
                                </tr>
                                <tr>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Nozzle Disc Size</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtNozzle_Disc_Size" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlSizeUnit1" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>

                                    </td>
                                    <td style="border-width: 0px; text-align: left; width: 25%;">
                                        <asp:TextBox ID="txtNozzle_Disc_Size_Af" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlSizeUnit2" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>

                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Disc Holder Size</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtDisc_Holder_Size" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlSizeUnit3" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>

                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:TextBox ID="txtDisc_Holder_Size_Af" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlSizeUnit4" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>

                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Adjust Bolt</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">

                                        <asp:TextBox ID="txtAdjust_Bolt" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlSizeUnit5" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>

                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">

                                        <asp:TextBox ID="txtAdjust_Bolt_Af" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlSizeUnit7" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>

                                        <br/>
                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Spring Dim.</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">

                                        <asp:TextBox ID="txtSpring_Dim" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlSizeUnit6" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>

                                        &nbsp;</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <br/>
                                    </td>
                                    <td style="text-align: -webkit-auto; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"></td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; vertical-align: middle; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Remark / Recommendation</td>
                                    <td style="text-align: -webkit-auto; width: 75%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" colspan="3">

                                        <asp:TextBox ID="txtRecommendation" runat="server" Height="69px" TextMode="MultiLine" Width="369px"></asp:TextBox>

                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-br layout-item-1">
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                        <p style="text-align: center;">
                            <span style="line-height: 18px; -webkit-border-horizontal-spacing: 2px; -webkit-border-vertical-spacing: 2px;">
                                <asp:ImageButton ID="imbSubmit" runat="server" Height="27px" SkinID="submit1" ValidationGroup="A" OnClientClick="if(confirm('Do you want to submit data?')== false) return false;" OnClick="imbSubmit_Click" />
                                <asp:ImageButton ID="imbCancel" runat="server" Height="27px" SkinID="cancel1" OnClientClick="if(confirm('Cancel and Back to page befor?')== false) return false;" OnClick="imbCancel_Click" /></span>
                            <br/>
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
