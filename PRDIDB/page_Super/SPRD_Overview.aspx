<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperMasterPage.Master" AutoEventWireup="true" CodeBehind="SPRD_Overview.aspx.cs" Inherits="PRDIDBSystem.page_Super.SPRD_Overview" StylesheetTheme="siteSkin" %>



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
        
     <asp:ImageButton ID="imb" runat="server" SkinID="add1" Height="22px" OnClick="imb_Click" />

        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1">

                        <p><span style="text-align: left">
                            <b>Total&nbsp; :
                            <asp:Literal ID="ltrTotalPlant" runat="server"></asp:Literal>
                                Plant&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Literal ID="ltrTotalArea" runat="server"></asp:Literal>
                                 Area&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Literal ID="ltrTotalPRD" runat="server"></asp:Literal>
                                PRD</b>
                        &nbsp;&nbsp;</span></p>
                        <p><span style="text-align: left; vertical-align:middle">
                            <b>Sort by&nbsp;</b>
                        &nbsp;&nbsp;</span><asp:DropDownList ID="ddlSortBy" runat="server" Height="22px" Width="147px" AutoPostBack="True" OnSelectedIndexChanged="ddlSortBy_SelectedIndexChanged">
                                <asp:ListItem>Last Update</asp:ListItem>
                                <asp:ListItem>Plant</asp:ListItem>
                                <asp:ListItem>Area</asp:ListItem>
                                <asp:ListItem>PRD No</asp:ListItem>
                                <asp:ListItem>Serial No</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;
                            <asp:ImageButton ID="imbRemove" runat="server" ImageUrl="~/images/icon/remove.png" Height="25px" OnClick="imbRemove_Click" OnClientClick="if(confirm('Do you want to remove data?')== false) return false;"/>
                        </p>
                       
                        <asp:GridView ID="gvPRD" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="50" Width="100%" ShowHeaderWhenEmpty="True" HorizontalAlign="Center" Style="text-align: center" OnPageIndexChanging="gvPRD_PageIndexChanging">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="No">
                                    <HeaderTemplate>
                                        <asp:CheckBox ID="chkAll" runat="server" onclick="doCheckUncheckAll('SheetContentPlaceHolder_gvPRD',this.checked)" />
                                            No.
                                    </HeaderTemplate>
                                    <HeaderStyle Width="7%" />
                                    <ItemTemplate>
                                            <asp:CheckBox ID="chkNo" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="PRD_ID">
                                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                    <ItemStyle CssClass="irpc-article-HideColumn" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="PRD No" DataField="PRD_No">
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Serial No" DataField="Serial_No">
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Area" DataField="area_Name">
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Plant" DataField="plant_Name">
                                <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="hlTestData" runat="server" Target="_blank">Test</asp:HyperLink>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbtnHistory" runat="server" OnClick="lbtnHistory_Click">History Card</asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="8%" />
                                    <ItemStyle HorizontalAlign="Center" />
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

