<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperMasterPage.Master" AutoEventWireup="true" CodeBehind="SPRD.aspx.cs" Inherits="PRDIDBSystem.page_Guest.SPRD" %>


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
            <h3 class="t"><a href="<%= ResolveUrl("~/page_Super/SPRD.aspx") %>">PRD</a></h3>
        </div>
        <div class="irpc-vmenublockcontent">
            <ul class="irpc-vmenu">
                <li><a href="<%= ResolveUrl("~/page_Super/SPRD_Overview.aspx") %>">PRD Data</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/SPRD_Data.aspx") %>">Search PRD Data</a></li>
                <li><a href="<%= ResolveUrl("~/page_Super/STest.aspx") %>">Test Data</a></li>


            </ul>

        </div>
    </div>

    <art:UserCounter ID="UserCounter1" runat="server" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <article class="irpc-post irpc-article" style="width: auto">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">PRD DATA</h2>

        </div>
        
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1">
                        <p>
                        <asp:GridView ID="gvSummaryAll" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="1" Width="100%" OnPageIndexChanging="gvSummary_PageIndexChanging" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" Style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
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
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Shut Down_S" DataField="ShutDown_S">
                                <HeaderStyle Width="8%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TurnAround" HeaderText="Turn Around">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                 <asp:BoundField HeaderText="" DataField="Overdue">
                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                    <ItemStyle CssClass="irpc-article-HideColumn" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Overdue">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="SelectOverdue0" runat="server" Font-Bold="True" ForeColor="#CC0000" OnClick="SelectOverdue0_Click">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                </asp:TemplateField>
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
                        </p>
                        
                    </div>


                </div>
            </div>
        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1">

                        <p><span style="text-align: left">
                            <b>Total Plant :
                            <asp:Literal ID="ltrTotalPlant" runat="server"></asp:Literal>
                                Plant</b>
                        </span>
                        </p>
                        <p>
                        <asp:GridView ID="gvSummary" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Horizontal" PageSize="50" Width="100%" OnPageIndexChanging="gvSummary_PageIndexChanging" ShowHeaderWhenEmpty="True" HorizontalAlign="Left" Style="text-align: center">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="No">
                                    <ItemTemplate>
                                        <asp:Literal ID="ltrNo" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                    <HeaderStyle Width="2%" />
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="ID" DataField="plant_ID">
                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                    <ItemStyle CssClass="irpc-article-HideColumn" />
                                </asp:BoundField>
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
                                <asp:BoundField DataField="ShutDown_S" HeaderText="Shut Down_S">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TurnAround" HeaderText="Turn Around">
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="" DataField="Overdue">
                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                    <ItemStyle CssClass="irpc-article-HideColumn" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Overdue">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="SelectOverdue" runat="server" Font-Bold="True" ForeColor="#CC0000" OnClick="SelectOverdue_Click">0</asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                </asp:TemplateField>
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

                            </p>
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

