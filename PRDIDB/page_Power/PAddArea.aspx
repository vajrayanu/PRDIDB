<%@ Page Title="" Language="C#" MasterPageFile="~/design/PowerMasterPage.Master" AutoEventWireup="true" CodeBehind="PAddArea.aspx.cs" Inherits="PRDIDBSystem.page_Power.PAddArea" StylesheetTheme="siteSkin" %>

<%@ Register TagPrefix="art" TagName="Header" Src="~/web_Control/PHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="Menu" Src="~/web_Control/PMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="Sidebar1" Src="~/web_Control/PSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="Footer" Src="~/web_Control/PFooter.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
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
            <h2 class="irpc-postheader">Add New Area</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        <p>
                            <br>
                        </p>
                    </div>
                </div>
            </div>



            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 25%; vertical-align: middle">
                        <p style="text-align: right;">&nbsp;<span style="line-height: 16px;">Select Plant</span></p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 75%">
                        <p>
                            &nbsp;<asp:DropDownList ID="ddlPlant" runat="server" Height="22px" Width="210px" DataValueField="ID" DataTextField="plant_Name">
                            </asp:DropDownList>
                        </p>
                    </div>
                    <%--<div class="irpc-layout-cell" style="width: 10%">
                        <p>
                            <br>
                        </p>
                    </div>--%>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 25%; vertical-align:middle">
                        <p style="text-align: right;">&nbsp;<span style="line-height: 16px; text-align: center;">Area Name</span></p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 75%">
                        <p>
                            &nbsp;<asp:TextBox ID="txtAreaName" runat="server" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAreaName" ErrorMessage="* please enter area's name" ForeColor="#CC0000" ValidationGroup="A" Display="Dynamic"></asp:RequiredFieldValidator>
                        </p>
                    </div>
                    <%--<div class="irpc-layout-cell" style="width: 10%">
                        <p>
                            <br>
                        </p>
                    </div>--%>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 25%">
                        <p style="text-align: center;">
                            <br>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 50%">
                        <p>
                            <span style="text-align: center;">&nbsp;<span style="line-height: 18px; -webkit-border-horizontal-spacing: 2px; -webkit-border-vertical-spacing: 2px;">
                                <asp:ImageButton ID="imbSubmit" runat="server" Height="27px" SkinID="submit1" OnClick="imbSubmit_Click" ValidationGroup="A" OnClientClick="if(confirm('Do you want to submit data?')== false) return false;" /></span>&nbsp;<span style="line-height: 18px; -webkit-border-horizontal-spacing: 2px; -webkit-border-vertical-spacing: 2px;">
                                    <asp:ImageButton ID="imbCancel" runat="server" Height="27px" SkinID="cancel1" OnClick="imbCancel_Click" OnClientClick="if(confirm('Cancel and Back to page befor?')== false) return false;" /></span></span><br>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 25%">
                        <p>
                            <br />
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        <p>
                            <br>
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
