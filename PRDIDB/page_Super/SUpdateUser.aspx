<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperMasterPage.Master" AutoEventWireup="true" CodeBehind="SUpdateUser.aspx.cs" Inherits="PRDIDBSystem.page_Super.SUpdateUser" StylesheetTheme="siteSkin" %>

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
    <style type="text/css">
        .auto-style1
        {
            width: 34%;
            height: 23px;
        }

        .auto-style2
        {
            width: 62%;
            height: 23px;
        }

        .auto-style3
        {
            width: 10%;
            height: 23px;
        }

        .auto-style4
        {
            width: 34%;
            height: 42px;
        }

        .auto-style5
        {
            width: 62%;
            height: 42px;
        }

        .auto-style6
        {
            width: 11%;
            height: 42px;
        }

        .auto-style7
        {
            width: 34%;
            height: 29px;
        }

        .auto-style8
        {
            width: 62%;
            height: 29px;
        }

        .auto-style9
        {
            width: 10%;
            height: 29px;
        }
        .auto-style10
        {
            width: 34%;
        }
        .auto-style11
        {
            width: 62%;
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
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
    <article class="irpc-post irpc-article">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">ADD NEW USER</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 25%; text-align: center;">
                        <p>
                            <img width="138" height="138" alt="" class="irpc-lightbox" src="<%= ResolveUrl("~/images/Sweb/business_user.png") %>" /><br />
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 45%">
                        <table class="irpc-article" style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; width: 100%;">
                            <tbody>
                                <tr>



                                    <td style="border-width: 0px; text-align: right;" class="auto-style1">
                                        <br />
                                    </td>
                                    <td style="border-width: 0px; text-align: -webkit-auto;" class="auto-style2">
                                        <br />
                                    </td>
                                    <td style="border-width: 0px;" class="auto-style3">
                                        <br />
                                    </td>
                                </tr>

                                <tr>
                                    <td style="border-width: 0px; text-align: right;" class="auto-style7">Username :</td>
                                    <td style="border-width: 0px; text-align: -webkit-auto;" class="auto-style8">
                                        <asp:TextBox ID="txtUsername" runat="server" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="* please enter username" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="#CC0000" ValidationGroup="user"></asp:RequiredFieldValidator>
                                    &nbsp;<asp:LinkButton ID="lbtnPassChange" runat="server" OnClick="lbtnPassChange_Click">change password</asp:LinkButton>
                                        <asp:Literal ID="ltrX" runat="server" Visible="False"></asp:Literal>
                                    </td>
                                    <td style="border-width: 0px;" class="auto-style9">
                                        <br />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <asp:Panel ID="Panel1" runat="server">
                            <table class="irpc-article" style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; width: 100%;">
                                <tbody>
                                    <tr>
                                        <td style="text-align: right; width: 34%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                            New Password :</td>
                                        <td style="border-width: 0px;" class="auto-style11">
                                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="* please enter password" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="#CC0000" ValidationGroup="user"></asp:RequiredFieldValidator>
                                            <br />
                                        </td>

                                        <td style="text-align: -webkit-auto; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class=""><span style="color: rgb(61, 65, 66); line-height: normal;">
                                            <br />
                                        </span></td>
                                    </tr>
                                    <tr>

                                        <td style="text-align: right; width: 34%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">Confirm-Password :</td>
                                        <td style="border-width: 0px;" class="auto-style11">
                                            <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ErrorMessage="* please enter confirm-password" ControlToValidate="txtConfirmPass" Display="Dynamic" ForeColor="#CC0000" ValidationGroup="user"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" Display="Dynamic" ErrorMessage="* confirm password isn't correct" ValidationGroup="user"></asp:CompareValidator>
                                            <br />
                                        </td>

                                        <td style="text-align: -webkit-auto; width: 10%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class=""><span style="color: rgb(61, 65, 66); line-height: normal;">
                                            <br />
                                        </span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </asp:Panel>
                        <table class="irpc-article" style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; width: 100%;">
                            <tbody>
                                <tr>
                                    <td style="border-width: 0px; text-align: right; " class="auto-style10">Name :</td>
                                    <td style="border-width: 0px;" class="auto-style11">
                                        <asp:TextBox ID="txtEmpName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="* please enter user name" ControlToValidate="txtEmpName" Display="Dynamic" ForeColor="#CC0000" ValidationGroup="user"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                    <td class="auto-style9" style="text-align: -webkit-auto; width: 11%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class=""><span style="color: rgb(61, 65, 66); line-height: normal;">
                                        <br />
                                    </span></td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px; text-align: right;" class="auto-style4">Position :</td>
                                    <td style="border-width: 0px;" class="auto-style5">
                                        <asp:TextBox ID="txtPosition" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvPositon" runat="server" ErrorMessage="* please enter position" ControlToValidate="txtPosition" Display="Dynamic" ForeColor="#CC0000" ValidationGroup="user"></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                    <td style="border-width: 0px; text-align: -webkit-auto;" class="auto-style6"><span style="color: rgb(61, 65, 66); line-height: normal;">
                                        <br />
                                    </span></td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px; text-align: right; " class="auto-style10">Type :</td>
                                    <td style="border-width: 0px;" class="auto-style11">
                                        <asp:RadioButtonList ID="radlType" runat="server" RepeatLayout="Flow">
                                            <asp:ListItem Value="G" Selected="True">Guest User</asp:ListItem>
                                            <asp:ListItem Value="P">Power User</asp:ListItem>
                                            <asp:ListItem Value="S">Super User</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="rfvType" runat="server" ErrorMessage="* please select user type" ControlToValidate="radlType" Display="Dynamic" ForeColor="#CC0000" ValidationGroup="user"></asp:RequiredFieldValidator>
                                    </td>
                                    <td style="width: 28%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class=""></td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px; text-align: right; " class="auto-style10">Status :</td>
                                    <td style="border-width: 0px;" class="auto-style11">
                                        <asp:RadioButtonList ID="radlStatus" runat="server" RepeatLayout="Flow">
                                            <asp:ListItem Value="A" Selected="True">Active</asp:ListItem>
                                            <asp:ListItem Value="N">Non-Active</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="rfvStatus" runat="server" ErrorMessage="* please select user status" ControlToValidate="radlStatus" Display="Dynamic" ForeColor="#CC0000" ValidationGroup="user"></asp:RequiredFieldValidator>
                                    </td>
                                    <td style="width: 28%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" class="">
                                        <br />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="irpc-layout-cell" style="width: 30%">
                        <p>
                            <br>
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 25%">
                        <p>
                            <br>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 50%">
                        <p style="text-align: center;">
                            <span style="line-height: 18px; -webkit-border-horizontal-spacing: 2px; -webkit-border-vertical-spacing: 2px;">&nbsp;<asp:ImageButton ID="imbSubmit" runat="server" Height="27px" SkinID="submit1" OnClick="imbSubmit_Click" ValidationGroup="user" OnClientClick="if(confirm('Do you want to submit data?')== false) return false;" />&nbsp;&nbsp;<asp:ImageButton ID="imbCancel" runat="server" Height="27px" SkinID="cancel1" OnClick="imbCancel_Click" OnClientClick="if(confirm('Cancel and Back to page befor?')== false) return false;" />&nbsp;</span><span style="line-height: 18px; -webkit-border-horizontal-spacing: 2px; -webkit-border-vertical-spacing: 2px;"><br>
                            </span>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 25%">
                        <p>
                            <br>
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        <p>
                            <br />
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
