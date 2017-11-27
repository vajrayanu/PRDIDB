<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperMasterPage.Master" AutoEventWireup="true" CodeBehind="SAddTest_Remark.aspx.cs" Inherits="PRDIDBSystem.page_Super.SAddTest_Remark" StylesheetTheme="siteSkin" %>


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

        .auto-style3
        {
            text-align: center;
        }

        .ui-datepicker
        {
            width: 200px;
            font-family: tahoma;
            font-size: 11px;
            /*text-align: center;*/
        }

        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadItemsContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <%--<art:Sidebar1 ID="DefaultSidebar1Content" runat="server" />--%>
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
    <div class="irpc-block clearfix">
        <div class="irpc-blockheader">
            <h3 class="t">Test Data</h3>
        </div>
        <div class="irpc-blockcontent">
            <p style="text-align: left;">Test ID : <span style="font-weight: bold;">
                <asp:Literal ID="ltrTestID" runat="server"></asp:Literal></span></p>
            <p style="text-align: left;">W/O : <span style="font-weight: bold;">
                <asp:Literal ID="ltrWO" runat="server"></asp:Literal></span></p>
            <p style="text-align: left;">Test Date : <span style="font-weight: bold;"><asp:Literal ID="ltrTestDate" runat="server"></asp:Literal></span></p>
           
        </div>
    </div>
    <%--<div class="irpc-content-layout-br layout-item-1">
            </div>--%>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <article class="irpc-post irpc-article">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">Add Test PRD Data &gt;&gt; Remark</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">

            <%--<div class="irpc-content-layout-br layout-item-1">
            </div>--%>
            
            
            
            
          
            <div class="irpc-content-layout-wrapper layout-item-0">
                <div class="irpc-content-layout layout-item-4">
                    <div class="irpc-content-layout-row">
                        <div class="irpc-layout-cell layout-item-5" style="width: 100%">
                            <p style="text-align: center;"><span style="font-weight: bold;">Remark</span></p>
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
                                    <td style="border-width: 0px; text-align: center;">

                                        <asp:TextBox ID="txtRemark" runat="server" Height="120px" TextMode="MultiLine" Width="395px"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px;" class="auto-style3">

                                        <asp:FileUpload ID="fulRemark" runat="server" Height="22px" Width="324px" />

                                        &nbsp;<asp:Button ID="btnAdd_Flie" runat="server" Text="Add File" OnClick="btnAdd_Flie_Click" />

                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center; width: 100%; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;">
                                        <asp:GridView ID="gvRemark" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="100%" OnPageIndexChanging="gvRemark_PageIndexChanging">
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
                                                        <asp:Literal ID="ltrFile_name" runat="server"></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField HeaderText="Remark" DataField="Remark"  >

                                                <HeaderStyle Width="50%" />
                                                </asp:BoundField>

                                                <asp:TemplateField HeaderText="Remove">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="imbRemove" runat="server" Height="22px" ImageUrl="~/images/icon/remove.png" OnClientClick="if(confirm('Do you want to remove data?')== false) return false;" OnClick="imbRemove_Click"  />
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                                    <ItemStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>

                                                <asp:BoundField DataField="Remark_ID">
                                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                    <ItemStyle CssClass="irpc-article-HideColumn" VerticalAlign="Middle" />
                                                </asp:BoundField>

                                                 <asp:BoundField DataField="path_File" >
                                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                    <ItemStyle CssClass="irpc-article-HideColumn" />
                                                </asp:BoundField>

                                                <asp:BoundField DataField="File_Name" >
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
                                </span>
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
