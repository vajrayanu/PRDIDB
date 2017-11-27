<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperMasterPage.Master" AutoEventWireup="true" CodeBehind="SAddPRD_Data.aspx.cs" Inherits="PRDIDBSystem.page_Super.SAddPRD_Data" StylesheetTheme="siteSkin" %>

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
            color: #202222;
            background: #BADBB8;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-1
        {
            color: #202222;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-2
        {
            color: #3B3F40;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-3
        {
            color: #3B3F40;
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

        .auto-style4
        {
            width: 25%;
            height: 15px;
        }

        .auto-style5
        {
            height: 26px;
        }

        .ui-datepicker
        {
            width: 200px;
            font-family: tahoma;
            font-size: 11px;
            /*text-align: center;*/
        }

        .auto-style7
        {
            width: 25%;
            height: 26px;
        }

        .auto-style8
        {
            height: 23px;
        }

        .inline
        {}
        .auto-style9
        {
            width: 72px;
        }

        .auto-style10
        {
            width: 25%;
            height: 29px;
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
    <art:UserCounter ID="UserCounter1" runat="server" />
    <!-- <div class="irpc-vmenublock clearfix">
        <div class="irpc-vmenublockheader">
            <h3 class="t">Vertical Menu</h3>
        </div>
        <div class="irpc-vmenublockcontent">
            <ul class="irpc-vmenu">

                <li><a href="#">xxxx</a></li>
                <li><a href="#">xxxx</a></li>


            </ul>

        </div>
    </div> -->
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">


    <article class="irpc-post irpc-article">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">Add New PRD</h2>

        </div>
        <asp:Panel ID="pMainMenu" runat="server">
            <table style="width: 100%; border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                <tbody>
                    <tr>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="auto-style9">&nbsp;</td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="auto-style9">&nbsp;</td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                            &nbsp;&nbsp;&nbsp; <asp:RadioButton ID="radWeb" runat="server" Text="On Web" Checked="True" GroupName="T" style="font-weight: 700" AutoPostBack="True" OnCheckedChanged="radWeb_CheckedChanged" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:RadioButton ID="radExcel" runat="server" GroupName="T" Text="On Excel file" style="font-weight: 700" AutoPostBack="True" OnCheckedChanged="radExcel_CheckedChanged" />
                        </td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="auto-style9">&nbsp;</td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                    </tr>
                </tbody>
            </table>


        </asp:Panel>
        <asp:Panel ID="pOnweb" runat="server">
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: 100%">
                        <p style="text-align: center;"><span style="font-size: 16px; font-weight: bold;">Process Data</span></p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        <table class="irpc-article" style="width: 100%;">
                            <tbody>
                                <tr>
                                    <td style="border-width: 0px; text-align: right;" class="auto-style7">PRD No.(ID)</td>
                                    <td style="border-width: 0px;" class="auto-style7">
                                        <asp:TextBox ID="txtPRD_ID" runat="server"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td style="border-width: 0px; text-align: right;" class="auto-style7">Area</td>
                                    <td style="border-width: 0px;" class="auto-style7">
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
                                    <td style="border-width: 0px; text-align: right; " class="auto-style10">Registration Date</td>
                                    <td style="border-width: 0px; vertical-align: middle" class="auto-style10">
                                        <asp:TextBox ID="txtRegistration_DatePicker" runat="server"></asp:TextBox>
                                        DD/MM/YYYY</td>
                                    <td style="border-width: 0px; text-align: right; " class="auto-style10">Cold Diff-Test Press.<br />
                                    </td>
                                    <td style="border-width: 0px;" class="auto-style10">
                                        <asp:TextBox ID="txtColdDiffPress" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlPressUnit2" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class=""> </td>
                                    <td style="border-width: 0px;" class="auto-style7">
                                        
                                    </td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class=""><span style="text-align: right;">Set Vacuum.</span></td>
                                    <td style="border-width: 0px;" class="auto-style10">
                                        <asp:TextBox ID="txtSetVacuum" runat="server" Width="65px"></asp:TextBox>
                                        <asp:DropDownList ID="ddlVacuum" runat="server" Height="22px" Width="65px" DataTextField="unit_Name" DataValueField="Id">
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Record By</td>
                                    <td style="text-align: -webkit-auto; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <asp:TextBox ID="txtRecord" runat="server" Enabled="False"></asp:TextBox>
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
                                        <asp:TextBox ID="txtEffecSize" runat="server" Width="65"></asp:TextBox>
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
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">&nbsp;</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">&nbsp;</td>
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">&nbsp;</td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">&nbsp;</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: 100%">
                        <p style="text-align: center;"><span style="font-size: 16px; font-weight: bold;">Maintenance Data</span></p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        <table class="irpc-article" style="width: 100%;">
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
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Spring No.<br />
                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <asp:TextBox ID="txtSpring_No" runat="server"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Referance By<br />
                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <asp:DropDownList ID="ddlReferance_By" runat="server" Height="22px" Width="100%">

                                            <asp:ListItem Value="Code">Code</asp:ListItem>
                                            <asp:ListItem Value="Law"></asp:ListItem>
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
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Spring Material<br />
                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <asp:TextBox ID="txtSpring_Material" runat="server"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Interval Time (Year)<br />
                                    </td>
                                    <td style="width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <asp:TextBox ID="txtInspec_Frequency" runat="server" Width="65px"></asp:TextBox>
                                        <br />
                                    </td>
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Nozzle&amp;Disc Insert Mat.<br />
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
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Norminal Size (Outlet)<br />
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
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Press. Rating (Outlet)<br />
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
                                    <td style="text-align: right; width: 25%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Flange Face (Outlet)<br />
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
                    </div>
                </div>
            </div>


            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: 100%">
                        <p style="text-align: center;"><span style="font-size: 16px; font-weight: bold;">Installation</span></p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout layout-item-2">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                        <table class="irpc-article" style="width: 100%;">
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
                                    <td style="border-width: 0px; text-align: right;" class="auto-style5">Type Colour</td>
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
                                    <td class="auto-style5" style="border-width: 0px; text-align: right; ">Function Location</td>
                                    <td style="border-width: 0px;" class="auto-style5">
                                        <asp:TextBox ID="txtFunction_Location" runat="server"></asp:TextBox>

                                    </td>
                                    <td style="border-width: 0px; text-align: right; " class="auto-style5">Status</td>
                                    <td style="border-width: 0px;" class="auto-style5">
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
                                    <td style="width: 25%; text-align: right; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">Remark</td>
                                    <td style="border-width: 0px;" colspan="3">
                                        <asp:TextBox ID="txtRemark" runat="server" Height="117px" TextMode="MultiLine" Width="365px"></asp:TextBox>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout layout-item-2">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%; background-color: beige;">
                        <p style="text-align: center;">
                            <span style="line-height: 18px; -webkit-border-horizontal-spacing: 2px; -webkit-border-vertical-spacing: 2px;">
                                <asp:ImageButton ID="imbSubmit" runat="server" Height="27px" SkinID="submit1" ValidationGroup="A" OnClientClick="if(confirm('Do you want to submit data?')== false) return false;" OnClick="imbSubmit_Click" />
                                <asp:ImageButton ID="imbCancel" runat="server" Height="27px" SkinID="cancel1" OnClientClick="if(confirm('Cancel and Back to page befor?')== false) return false;" OnClick="imbCancel_Click" /></span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout layout-item-2">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                        <p>
                            <br />
                        </p>
                    </div>
                </div>
            </div>
        </div>
        </asp:Panel>


        <asp:Panel ID="pOnExcel" runat="server">
            <table style="width: 100%; border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                <tbody>
                    <tr>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;"><b>*Please use template file from the system.&nbsp; Otherwise, The system it&#39;s will be error. (recommend)</b></td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                        <td style="border-width: 0px; text-align: center; font-weight: 700; color: #FF6600;">
                            &nbsp;
                            <asp:Literal ID="ltrText" runat="server" Text="Template for input PRD data---&gt;&gt;&gt;"></asp:Literal>
                            &nbsp;<asp:ImageButton ID="imbexport_excel" runat="server" SkinID="Export_to_Excel1" OnClick="imbexport_excel_Click"  />
                        </td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="auto-style5"></td>
                        <td style="border-width: 0px; text-align: center;" class="auto-style5">
                            <asp:FileUpload ID="fulPRDData" runat="server" CssClass="inline"  Width="417px" BackColor="White" BorderColor="#6600FF" BorderStyle="None" Height="22px" />
                        </td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="auto-style5"></td>
                    </tr>
                    <tr>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="auto-style8"></td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="auto-style8"></td>
                        <td style="border-width: 0px; border-color: none; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="auto-style8"></td>
                    </tr>
                </tbody>
            </table>
            <div class="irpc-content-layout layout-item-2">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%; background-color: beige;">
                        <p style="text-align: center;">
                            <span style="line-height: 18px; -webkit-border-horizontal-spacing: 2px; -webkit-border-vertical-spacing: 2px;">
                                <asp:ImageButton ID="imbSubminExcel" runat="server" Height="27px" SkinID="submit1" ValidationGroup="A" OnClientClick="if(confirm('Do you want to submit data?')== false) return false;" OnClick="imbSubminExcel_Click" />
                                <asp:ImageButton ID="imbCancel2" runat="server" Height="27px" SkinID="cancel1" OnClientClick="if(confirm('Cancel and Back to page befor?')== false) return false;" OnClick="imbCancel_Click" /></span>
                        </p>
                    </div>
                </div>
            </div>


        </asp:Panel>
    </article>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />

</asp:Content>

