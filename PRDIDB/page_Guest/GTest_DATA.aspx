<%@ Page Title="" Language="C#" MasterPageFile="~/design/GuestMasterPage.Master" AutoEventWireup="true" CodeBehind="GTest_DATA.aspx.cs" Inherits="PRDIDBSystem.page_Guest.GTest_DATA" StylesheetTheme="siteSkin" %>


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

    <%--<div class="irpc-block clearfix">
        <div class="irpc-blockheader">
            <h3 class="t">Test Data</h3>
        </div>
        <div class="irpc-blockcontent">
            <p style="text-align: left;">Total <span style="font-weight: bold;">100</span> record</p>
            <p style="text-align: left;">Last update <span style="font-weight: bold;">00/00/0000 00:00&nbsp;</span></p>
            <p style="text-align: left;">Update by <span style="font-weight: bold;">XXX XXX</span></p>
        </div>
    </div>--%>
    <%--<div class="irpc-vmenublock clearfix">
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
            <h2 class="irpc-postheader">Test PRD Data</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">

            <%--<div class="irpc-content-layout-br layout-item-1">
            </div>--%>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                        <p style="text-align: left;">

                            <%--<asp:ImageButton ID="imb" runat="server" SkinID="add1" Height="22px" OnClick="imb_Click" />--%>

                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-4">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-5" style="width: 100%">
                            <p style="text-align: center;">
                                <span style="font-weight: bold;">TEST PRD DATA</span><br>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%; text-align: center;">
                        <asp:GridView ID="gvTestPRD" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" ShowFooter="True" ShowHeaderWhenEmpty="True" Width="100%" AllowPaging="True" PageSize="50">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="No.">
                                    <ItemTemplate>
                                        <asp:Literal ID="ltrNo" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" Width="7%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Test ID" DataField="Test_ID">
                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                    <ItemStyle CssClass="irpc-article-HideColumn" />
                                </asp:BoundField>
                                <asp:BoundField DataFormatString="{0:dd  MMMM  yyyy}" HeaderText="Test Date" DataField="Test_Date">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Test_Result" HeaderText="Test Result">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Select">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imbSelectData" runat="server" Height="22px" ImageUrl="~/images/icon/Open_Folder-128.png" Width="32px" OnClick="imbSelectData_Click" />
                                    </ItemTemplate>
                                    <HeaderStyle Width="5%" HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <%--<asp:TemplateField HeaderText="Remove">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imbRemove" runat="server" Height="22px" ImageUrl="~/images/icon/remove.png" OnClientClick="if(confirm('Do you want to remove data?')== false) return false;" OnClick="imbRemove_Click" />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" Width="5%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>--%>
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </div>
                </div>
            </div>





            <div class="irpc-content-layout-br layout-item-1">
            </div>

        </div>


    </article>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>
