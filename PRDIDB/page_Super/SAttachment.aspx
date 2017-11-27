<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperMasterPage.Master" AutoEventWireup="true" CodeBehind="SAttachment.aspx.cs" Inherits="PRDIDBSystem.page_Super.SAttachment" StylesheetTheme="siteSkin" %>

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
            color: #202222;
            background: #BADBB8;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-1
        {
            color: #202222;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-2
        {
            color: #3B3F40;
        }

        .irpc-content .irpc-postcontent-0 .layout-item-3
        {
            color: #3B3F40;
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

        .auto-style1
        {
            width: 25%;
            height: 26px;
        }

        .auto-style2
        {
            width: 75%;
            height: 26px;
        }

        .auto-style3
        {
            height: 32px;
        }

        .ui-datepicker
        {
            width: 200px;
            font-family: tahoma;
            font-size: 11px;
            /*text-align: center;*/
        }
        .auto-style4
        {
            width: 25%;
            height: 98px;
        }
        .auto-style5
        {
            width: 75%;
            height: 98px;
        }
    </style>


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
            <h2 class="irpc-postheader">Add New PRD &gt;&gt; Attachment</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            
            
            
            
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: 100%">
                        <p style="text-align: center;"><span style="font-size: 16px; font-weight: bold;">Attachment (PRD No.<asp:Literal ID="ltrPRDNo" runat="server"></asp:Literal>)</span></p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout layout-item-2">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
                        <table class="irpc-article" style="width: 100%;">
                            <tbody>
                                <tr>
                                    <td style="border-width: 0px;" class="auto-style1">
                                        <br>
                                    </td>
                                    <td style="border-width: 0px;" class="auto-style2">
                                        <asp:CheckBox ID="chkMemo" runat="server" Text="Memo" />
                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px; text-align: center;" class="auto-style3" colspan="2">

                                        <asp:RadioButtonList ID="radlPoint" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                            <asp:ListItem Selected="True">Set Point</asp:ListItem>
                                            <asp:ListItem>Plant</asp:ListItem>
                                            <asp:ListItem>Line No.</asp:ListItem>
                                        </asp:RadioButtonList>

                                        <asp:FileUpload ID="fulAttachment" runat="server" Width="260px" Height="22px" AllowMultiple="True" />
                                        &nbsp;&nbsp;<asp:Button ID="btnAdd_File" runat="server" Height="29px" OnClick="btnAdd_File_Click" Text="Add File" Width="59px" />
                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px; text-align: right; " class="auto-style4" aria-readonly="True">Note Memo<br>
                                    </td>
                                    <td style="border-width: 0px;" class="auto-style5">
                                        <asp:TextBox ID="txtNoteMemo" runat="server" Height="88px" TextMode="MultiLine" Width="305px"></asp:TextBox>
                                        <br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-width: 0px; width: 100%;" colspan="2" class="">

                                        <asp:GridView ID="gvFile" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="2" ForeColor="Black" GridLines="None" PageSize="20" Style="text-align: left" Width="100%" HorizontalAlign="Center" AllowPaging="True" ShowHeader="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" OnPageIndexChanging="gvFile_PageIndexChanging" >
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
                                                        <asp:Literal ID="ltrMemo" runat="server"></asp:Literal>
                                                        &nbsp;
                                                        <asp:Literal ID="ltrPoint" runat="server"></asp:Literal>
                                                        &nbsp;
                                                        <asp:Literal ID="ltrFile" runat="server"></asp:Literal>
                                                        <br />
                                                        Note Memo :
                                                        <asp:Literal ID="ltrNote" runat="server"></asp:Literal>
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="85%" />
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Remove">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="imbRemove" runat="server" Height="22px" ImageUrl="~/images/icon/remove.png" OnClientClick="if(confirm('Do you want to remove data?')== false) return false;" OnClick="imbRemove_Click" />
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Center" Width="10%" />
                                                    <ItemStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>

                                                <asp:BoundField DataField="file_ID">
                                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                    <ItemStyle CssClass="irpc-article-HideColumn" VerticalAlign="Middle" />


                                                </asp:BoundField>
                                                <asp:BoundField DataField="memo">
                                                    <ControlStyle CssClass="irpc-article-HideColumn" />
                                                    <FooterStyle CssClass="irpc-article-HideColumn" />
                                                    <HeaderStyle CssClass="irpc-article-HideColumn" />
                                                    <ItemStyle CssClass="irpc-article-HideColumn" VerticalAlign="Middle" />


                                                </asp:BoundField>
                                                <asp:BoundField DataField="Point">
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

                                                <asp:BoundField DataField="Note_memo" >
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
            
            
            <div class="irpc-content-layout layout-item-2">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%; background-color: beige;">
                        <p style="text-align: center;">
                            <span style="line-height: 18px; -webkit-border-horizontal-spacing: 2px; -webkit-border-vertical-spacing: 2px;">
                                <asp:ImageButton ID="imbSubmit" runat="server" Height="27px" SkinID="submit1" ValidationGroup="A" OnClientClick="if(confirm('Do you want to submit data?')== false) return false;" OnClick="imbSubmit_Click" />
                                </span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="irpc-content-layout layout-item-2">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-3" style="width: 100%">
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

