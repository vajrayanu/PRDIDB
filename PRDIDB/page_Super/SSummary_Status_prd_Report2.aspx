<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperReportMasterPage.Master" AutoEventWireup="true" CodeBehind="SSummary_Status_prd_Report2.aspx.cs" Inherits="PRDIDBSystem.page_Super.SSummary_Status_prd_Report2" %>


<%@ Register TagPrefix="art" TagName="Header" Src="~/web_Control/SHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="Menu" Src="~/web_Control/SMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="Sidebar1" Src="~/web_Control/SSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="Footer" Src="~/web_Control/SFooter.ascx" %>

<%@ Register TagPrefix="art" TagName="UserCounter" Src="~/web_Control/Counter.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" runat="server">
    <style>
        .irpc-content .irpc-postcontent-0 .layout-item-0 {
            color: #1C4759;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-1 {
            color: #1C4759;
            padding-right: 10px;
            padding-left: 10px;
        }

        .ie7 .irpc-post .irpc-layout-cell {
            border: none !important;
            padding: 0 !important;
        }

        .ie6 .irpc-post .irpc-layout-cell {
            border: none !important;
            padding: 0 !important;
        }

        .irpc-postheader {
            text-align: center;
        }

        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadItemsContentPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" runat="server">
    <%--<asp:TemplateField HeaderText="Overdue">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="SelectOverdue" runat="server" Font-Bold="True" ForeColor="#CC0000">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                </asp:TemplateField>--%>
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
            <h2 class="irpc-postheader">INSPECTION  PLAN (BY YEAR)</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: auto; vertical-align: middle; text-align: center;">
                        <p>
                            Report Date :
                        <asp:TextBox ID="txtToday" runat="server" BackColor="White" Enabled="False"></asp:TextBox>
                        </p>
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

                    </div>


                </div>
            </div>
        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: auto; vertical-align: middle; text-align: left">
                        <p>
                            <b>Total Plant :
                            <asp:Literal ID="ltrTotalPlant" runat="server"></asp:Literal>
                                Plant
                            <asp:Button ID="btnAll" runat="server" OnClick="btnAll_Click" Text="All" />
                                &nbsp; </b>
                            <asp:DropDownList ID="ddlPlant" runat="server" AutoPostBack="True" DataTextField="plant_Name" DataValueField="ID" Width="153px" OnSelectedIndexChanged="ddlPlant_SelectedIndexChanged">
                            </asp:DropDownList>
                            &nbsp;
                        </p>

                    </div>
                    <div class="irpc-layout-cell layout-item-1" style="width: auto; vertical-align: middle; text-align: right">
                        <p>
                            <span style="text-align: right">
                                <asp:DropDownList ID="ddlYear" runat="server" Height="22px" Width="137px" DataTextField="Year" AutoPostBack="True" DataValueField="Year" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList></span>
                        </p>
                    </div>
                    <asp:Literal ID="Literal1" runat="server" Visible="False"></asp:Literal>
                    <asp:Literal ID="Literal2" runat="server" Visible="False"></asp:Literal>
                    <asp:Literal ID="Literal3" runat="server" Visible="False"></asp:Literal>
                </div>
            </div>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1">

                        <%--<asp:TemplateField HeaderText="Overdue">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="SelectOverdue" runat="server" Font-Bold="True" ForeColor="#CC0000">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                </asp:TemplateField>--%>

                        <asp:GridView ID="gvSummary" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="100" Width="100%" OnPageIndexChanging="gvSummary_PageIndexChanging" HorizontalAlign="Center" Style="text-align: center" ShowHeader="False" OnDataBound="gvSummary_DataBound" ShowFooter="True">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>

                                <asp:BoundField HeaderText="" DataField="plant_ID">
                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                    <ItemStyle CssClass="irpc-article-HideColumn" />
                                </asp:BoundField>

                                <asp:BoundField HeaderText="" DataField="Code_Sum">
                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                    <ItemStyle CssClass="irpc-article-HideColumn" />
                                </asp:BoundField>

                                <asp:BoundField HeaderText="" DataField="Law_Sum">
                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                    <ItemStyle CssClass="irpc-article-HideColumn" />
                                </asp:BoundField>

                                <asp:BoundField DataField="AllSum" HeaderText="AllSum" >
                                 <ControlStyle CssClass="irpc-article-HideColumn" />
                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                    <ItemStyle CssClass="irpc-article-HideColumn" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="No">
                                    <ItemTemplate>
                                        <asp:Literal ID="ltrNo" runat="server"></asp:Literal>
                                    </ItemTemplate>

                                    <ItemStyle />

                                </asp:TemplateField>

                                <asp:TemplateField FooterText="Total" HeaderText="plant">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("plant_Name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("plant_Name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterStyle Font-Bold="True" ForeColor="White" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="" DataField="OnStream1">

                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="ShutDown1">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="TurnAround1">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>

                                <asp:BoundField HeaderText="" DataField="OnStream2">

                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="ShutDown2">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="TurnAround2">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>

                                <asp:BoundField HeaderText="" DataField="OnStream3">

                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="ShutDown3">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="TurnAround3">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>


                                <asp:TemplateField HeaderText="Sum">
                                    <FooterTemplate>
                                        <asp:LinkButton ID="lbtnTotalSum_Code" runat="server" Font-Bold="True" ForeColor="#CC0000" OnClick="lbtnTotalSum_Code_Click">0</asp:LinkButton>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbtnCode_Sum" runat="server" Font-Bold="True" ForeColor="#CC0000" OnClick="lbtnCode_Sum_Click">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <FooterStyle BackColor="#FFFFCC" />
                                    <HeaderStyle BackColor="#FFFFCC" />
                                    <ItemStyle BackColor="#FFFFCC" />
                                </asp:TemplateField>


                                <asp:BoundField HeaderText="" DataField="OnStream4">

                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="ShutDown4">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="TurnAround4">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>


                                <asp:BoundField HeaderText="" DataField="OnStream5">

                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="ShutDown5">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="TurnAround5">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>


                                <asp:BoundField HeaderText="" DataField="OnStream6">

                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="ShutDown6">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="TurnAround6">

                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>



                                <%--<asp:TemplateField HeaderText="Overdue">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="SelectOverdue" runat="server" Font-Bold="True" ForeColor="#CC0000">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                </asp:TemplateField>--%>

                                <%-- <asp:BoundField DataField="PRD_ID">
                                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                    <ItemStyle CssClass="irpc-article-HideColumn" VerticalAlign="Middle" />
                                </asp:BoundField>--%>
                                <asp:TemplateField HeaderText="Sum">
                                    <FooterTemplate>
                                        <asp:LinkButton ID="lbtnTotalSum_Law" runat="server" Font-Bold="True" ForeColor="#CC0000" OnClick="lbtnTotalSum_Law_Click">0</asp:LinkButton>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbtnLaw_Sum" runat="server" Font-Bold="True" ForeColor="#CC0000" OnClick="lbtnLaw_Sum_Click"></asp:LinkButton>
                                    </ItemTemplate>
                                    <FooterStyle BackColor="#FFFFCC" />
                                    <HeaderStyle BackColor="#FFFFCC" />
                                    <ItemStyle BackColor="#FFFFCC" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Sum">
                                    <FooterTemplate>
                                        <asp:LinkButton ID="lbtnTotal_Sum" runat="server" Font-Bold="True" ForeColor="#CC0000" OnClick="lbtnTotal_Sum_Click"></asp:LinkButton>
                                    </FooterTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbtnAll_Sum" runat="server" Font-Bold="True" ForeColor="#CC0000" OnClick="lbtnAll_Sum_Click">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <FooterStyle BackColor="#FFFF66" />
                                </asp:TemplateField>
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
    </article>

</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>

