<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperReportMasterPage.Master" AutoEventWireup="true" CodeBehind="SSummary_Status_prd_Report.aspx.cs" Inherits="PRDIDBSystem.page_Super.SSummary_Status_prd_Report" StylesheetTheme="siteSkin" %>

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
            color: #1C4759;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-1
        {
            color: #1C4759;
            padding-right: 10px;
            padding-left: 10px;
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
        .irpc-postheader
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadItemsContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <%-- <asp:BoundField DataField="NoTest" HeaderText="No Test">
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>--%>
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

<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
   <article class="irpc-post irpc-article" style="width: auto">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">SUMMARY STATUS PRD REPORT</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: auto; vertical-align: middle; text-align: center;">
                       <p> Report Date :
                        <asp:TextBox ID="txtToday" runat="server" BackColor="White" Enabled="False"></asp:TextBox></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1">
                        <p style="text-align: right">
                            <asp:Button ID="btnPDF" runat="server" Text="Export to PDF" OnClick="btnPDF_Click" />
                            &nbsp;
                            <asp:Button ID="btnExcel" runat="server" Text="Export to Excel" OnClick="btnExcel_Click" />
                        </p>
                        <p>
                        <asp:GridView ID="gvSummaryAll" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="1" Width="100%" OnPageIndexChanging="gvSummary_PageIndexChanging" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" Style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <%-- <asp:BoundField DataField="NoTest" HeaderText="No Test">
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>--%>
                                <%--<asp:TemplateField HeaderText="Overdue">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="SelectOverdue0" runat="server" Font-Bold="True" ForeColor="#CC0000">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                </asp:TemplateField>--%>
                                <asp:BoundField HeaderText="All plant" DataField="plant_Name">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Total PRD" DataField="total">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Law" DataField="Law">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Code" DataField="code1">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Tested" HeaderText="Tested">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NoTest" HeaderText="No Test">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="OnStream" HeaderText="On Stream">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ShutDown" HeaderText="Shut Down">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Shut Down_S" DataField="ShutDown_S">
                                <HeaderStyle Width="8%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TurnAround" HeaderText="Turn Around">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Overdue" HeaderText="Overdue">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        </p>
                        
                    </div>


                </div>
            </div>
        </div>
       <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: auto; vertical-align: middle; text-align:left">
                      <p>
                            <b>Total Plant :
                            <asp:Literal ID="ltrTotalPlant" runat="server"></asp:Literal>
                                Plant</b>
                        </p>
                           
                    </div>
                    <div class="irpc-layout-cell layout-item-1" style="width: auto; vertical-align: middle; text-align:right">
                       <p>
                            <span style="text-align:right">
                        <%--<asp:DropDownList ID="ddlYear" runat="server" Height="22px" Width="137px" DataTextField="year" AutoPostBack="True" DataValueField="year" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>--%></span></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1">

                       

                        <asp:GridView ID="gvSummary" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="50" Width="100%" OnPageIndexChanging="gvSummary_PageIndexChanging" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" Style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="No">
                                    <ItemTemplate>
                                        <asp:Literal ID="ltrNo" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                    <HeaderStyle Width="2%" />
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="plant" DataField="plant_Name">
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Total PRD" DataField="total">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Law" DataField="Law">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Code" DataField="code1">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Tested" HeaderText="Tested">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <%-- <asp:BoundField DataField="NoTest" HeaderText="No Test">
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>--%>
                                <asp:BoundField DataField="NoTest" HeaderText="No Test">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="OnStream" HeaderText="On Stream">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ShutDown" HeaderText="Shut Down">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Shut Down_S" DataField="ShutDown_S">
                                <HeaderStyle Width="8%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TurnAround" HeaderText="Turn Around">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <%--<asp:TemplateField HeaderText="Overdue">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="SelectOverdue" runat="server" Font-Bold="True" ForeColor="#CC0000">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                </asp:TemplateField>--%>
                                <asp:BoundField DataField="Overdue" HeaderText="Overdue" >
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>

                               <%-- <asp:BoundField DataField="PRD_ID">
                                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                    <ItemStyle CssClass="irpc-article-HideColumn" VerticalAlign="Middle" />
                                </asp:BoundField>--%>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>


                        <br />
                    </div>
                </div>
            </div>
        </div>
        <%-- <asp:BoundField DataField="NoTest" HeaderText="No Test">
                                <HeaderStyle Width="10%" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>--%><%--<asp:TemplateField HeaderText="Overdue">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="SelectOverdue" runat="server" Font-Bold="True" ForeColor="#CC0000">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                </asp:TemplateField>--%>
    </article>
    
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>
