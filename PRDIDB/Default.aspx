<%@ Page Title="" Language="C#" MasterPageFile="~/design/IRPCMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PRDIDBSystem.Default" StylesheetTheme="siteSkin" %>

<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="~/web_Control/DefaultHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="~/web_Control/DefaultMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="DefaultFooter" Src="~/web_Control/DefaultFooter.ascx" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadItemsContentPlaceholder" runat="server">
    <style>
        .irpc-content .irpc-postcontent-0 .layout-item-0
        {
            padding-right: 10px;
            padding-left: 10px;
        }

        .ie7 .post .layout-cell
        {
            border: none !important;
            padding: 0 !important;
        }

        .ie6 .post .layout-cell
        {
            border: none !important;
            padding: 0 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <%--<art:DefaultMenu ID="DefaultMenuContent" runat="server" />--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    <art:DefaultHeader ID="DefaultHeaderContent" runat="server" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></cc1:ToolkitScriptManager>
    <article class="irpc-post irpc-article">

        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        <h3 style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(167, 164, 173); padding-bottom: 5px; text-align: center;"><span style="font-weight: bold;">User Login PRD IDB System</span></h3>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 37%">
                        <p style="text-align: right;">
                            <span style="font-size: 13px; text-align: center;">
                                <br />
                            </span>
                        </p>
                        <p style="text-align: right;">
                            <span style="font-size: 13px; text-align: center;">Username :</span><br />
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 63%" runat="server">
                        <p style="text-align: left;"><span style="font-size: 13px;">&nbsp;</span></p>
                        <p style="text-align: left;">
                            &nbsp;<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUsername" ErrorMessage="* Enter your username" ValidationGroup="login" TargetControlID="xxxx" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            
                            
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 37%">
                        <p style="text-align: right;">
                            <span style="font-size: 13px; text-align: center;">Password &nbsp;:</span><br>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 63%">
                        <p style="text-align: left;">
                            <span style="font-size: 13px;">&nbsp;</span><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="* Enter your password" ControlToValidate="txtPassword" ValidationGroup="login" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 37%">
                        <p>
                            <br>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 63%">
                        <p>
                            <span style="text-align: center;">
                                <asp:ImageButton ID="imbLogin" runat="server" Height="32px" SkinID="Login" ValidationGroup="login" Width="95px" OnClick="imbLogin_Click" />
                            </span>
                            <br>
                        </p>
                    </div>
                </div>
            </div>
        </div>


    </article>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:DefaultFooter ID="DefaultFooterContent" runat="server" />
</asp:Content>
