<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperMasterPage.Master" AutoEventWireup="true" CodeBehind="SUser.aspx.cs" Inherits="PRDIDBSystem.page_Super.SUser"  StylesheetTheme="siteSkin"%>

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
            <h2 class="irpc-postheader">USER DATA</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        <p>
                            &nbsp;<asp:ImageButton ID="imb" runat="server" SkinID="add1" Height="22px" OnClick="imb_Click" />
                            <br/>
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 25%;vertical-align:bottom">
                        <p style="text-align: center;">
                            <asp:CheckBox ID="chkAll" runat="server" Text="search all" AutoPostBack="True" OnCheckedChanged="chkAll_CheckedChanged" />
                            <br/>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 50%">
                        <p>
                            <asp:TextBox ID="txtSearchText" runat="server" Width="200px"></asp:TextBox>&nbsp;<asp:ImageButton ID="imbSearch" runat="server" Height="27px" SkinID="search1" OnClick="imbSearch_Click" />&nbsp;<br/>
                        </p>
                    </div>
                    <div class="irpc-layout-cell" style="width: 25%">
                        <p>
                            <br/>
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell" style="width: 100%">
                        
                        <p>Data List</p>
                        <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" ShowFooter="True" Width="100%" CellPadding="4"  ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="gvUser_PageIndexChanging" PageSize="20" OnSelectedIndexChanged="gvUser_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="No">
                                    <ItemTemplate>
                                        <asp:Literal ID="ltrNo" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                    <HeaderStyle Width="7%" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="nUser_ID" >
                                <ControlStyle CssClass="irpc-article-HideColumn" />
                                <FooterStyle CssClass="irpc-article-HideColumn" />
                                <HeaderStyle CssClass="irpc-article-HideColumn" />
                                <ItemStyle CssClass="irpc-article-HideColumn" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Username" DataField="Username">
                                <HeaderStyle Width="18%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Name" DataField="User_Name">
                                <HeaderStyle Width="18%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Position" DataField="Position">
                                <HeaderStyle Width="17%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Type" DataField="userType">
                                <HeaderStyle Width="17%" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imbEdit" runat="server" Height="22px" ImageUrl="~/images/icon/edit.png" OnClick="imbUpdate_Click"/>
                                    </ItemTemplate>
                                    <HeaderStyle Width="12%" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Remove">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imbRemove" runat="server" Height="22px" ImageUrl="~/images/icon/remove.png" OnClick="imbRemove_Click" OnClientClick="if(confirm('Do you want to remove data?')== false) return false;" />
                                    </ItemTemplate>
                                    <HeaderStyle Width="11%" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
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
                        
                        
                            <br/>
                        
                    </div>
                </div>
            </div>
        </div>


    </article>
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>
