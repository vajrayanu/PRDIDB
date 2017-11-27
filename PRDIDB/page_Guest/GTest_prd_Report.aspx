<%@ Page Title="" Language="C#" MasterPageFile="~/design/GuestReportMasterPage.Master" AutoEventWireup="true" CodeBehind="GTest_prd_Report.aspx.cs" Inherits="PRDIDBSystem.page_Guest.GTest_prd_Report" %>


<%@ Register TagPrefix="art" TagName="Header" Src="~/web_Control/GHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="Menu" Src="~/web_Control/GMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="Sidebar1" Src="~/web_Control/GSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="Footer" Src="~/web_Control/GFooter.ascx" %>


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

<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <article class="irpc-post irpc-article" style="width: auto">
        <div class="irpc-postmetadataheader">
            <h2 class="irpc-postheader">&nbsp;TEST PRD REPORT(ALL TEST)</h2>

        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: auto">
                        <br />
                    </div>
                </div>
            </div>
        </div>

        <div class="irpc-postcontent irpc-postcontent-0 clearfix"  style="width:auto">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: 100%;vertical-align:middle">
                        Plant :
                        <asp:DropDownList ID="ddlPlant" runat="server" Height="22px" Width="134px" DataTextField="plant_Name" DataValueField="ID"></asp:DropDownList>&nbsp; Test Year :
                        <asp:DropDownList ID="ddlTestYear" runat="server" Height="22px" Style="margin-bottom: 0px" Width="130px" DataTextField="Year" DataValueField="Year">
                        </asp:DropDownList>&nbsp;
                         <asp:DropDownList ID="ddlTested" runat="server" Height="22px">
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>Tested</asp:ListItem>
                                <asp:ListItem>No Test</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="OK" />
                        <br />
                        <br />
                    </div>
                    <div class="irpc-layout-cell layout-item-2" style="width: 50%; text-align: right;">
                        <asp:Button ID="btnExcel" runat="server" Height="22px" Text="Export to PDF" OnClick="btnExcel_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: auto">
                        <div style="width: 100%; height: 500px; overflow-y: scroll; scrollbar-arrow-color:blue; scrollbar-face-color: #e7e7e7; scrollbar-3dlight-color: #a0a0a0; scrollbar-darkshadow-color:#888888">  
                        <p>
                         
                            
                            
                        <asp:GridView ID="gvStatusAll" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="2303px" AllowPaging="True" PageSize="50" style="text-align: center" OnPageIndexChanging="gvStatusAll_PageIndexChanging">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="Item">
                                    <ItemTemplate>
                                        <asp:Literal ID="ltrNo" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                    <HeaderStyle Width="1%" />
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Plant" DataField="plant_name">
                                    <HeaderStyle Width="5%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="area" DataField="area_Name">
                                <HeaderStyle Width="5%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="PRD No." DataField="PRD_No">
                                <HeaderStyle Width="6%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Line/Equlip No" DataField="Line_Equlip">
                                <HeaderStyle Width="11%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="service fluid" DataField="service_fluid">
                                <HeaderStyle Width="5%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="oper press" DataField="oper_press">
                                <HeaderStyle Width="5%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="oper temp" DataField="oper_temp">
                                <HeaderStyle Width="5%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="set press" DataField="set_press">
                                <HeaderStyle Width="5%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="coldiff" DataField="coldiff">
                                <HeaderStyle Width="5%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Mfg. name" DataField="Mfg_name">
                                <HeaderStyle Width="8%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Model No" DataField="Model_No">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Serial No" DataField="Serial_No">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="result" DataField="result">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="last test" DataField="last_test">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="interval time" DataField="interval_time">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="next inspec" DataField="next_inspec">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="condition" DataField="condition">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="location" DataField="location">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="shop test" DataField="shop_test">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Norminal Size (inlet)" DataField="Norminal_Size_inlet">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Norminal Size (outlet)" DataField="Norminal_Size_outlet">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Press.Rating (inlet)" DataField="Press_Rating_inlet">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Press.Rating (outlet)" DataField="Press_Rating_outlet">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Flange Face (inlet)" DataField="Flange_Face_inlet">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Flange Face (outlet)" DataField="Flange_Face_outlet">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="type of valve" DataField="type_of_valve">
                                <HeaderStyle Width="3%" />
                                </asp:BoundField>
                                
                                <asp:BoundField HeaderText="Function Location" DataField="Function_Location">
                                <HeaderStyle Width="8%" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Note Memo" DataField="Note_Memo">
                                <HeaderStyle Width="15%" />
                                </asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="X-Small" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" BorderWidth="1px" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView></p></div>

                    </div>
                </div>
            </div>
        </div>
      
    </article>
    
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>




