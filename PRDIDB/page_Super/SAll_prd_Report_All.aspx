<%@ Page Title="" Language="C#" MasterPageFile="~/design/SuperReportMasterPage.Master" AutoEventWireup="true" CodeBehind="SAll_prd_Report_All.aspx.cs" Inherits="PRDIDBSystem.page_Super.SAll_prd_Report_All" %>
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
            <h2 class="irpc-postheader">ALL PRD REPORT (All TEST)</h2>

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
<%--                        <asp:Button ID="btnPDF" runat="server" Height="22px" Text="Export to PDF"/> &nbsp;--%>
                        <asp:Button ID="btnExcel" runat="server" Height="22px" Text="Export to Excel" OnClick="btnExcel_Click"/>
                    </div>
                </div>
            </div>
        </div>
        <div class="irpc-postcontent irpc-postcontent-0 clearfix">
            <div class="irpc-content-layout layout-item-0">
                <div class="irpc-content-layout-row">
                    <div class="irpc-layout-cell layout-item-1" style="width: auto">
                        <div style="width: 100%; height: 500px; overflow-y: scroll; scrollbar-arrow-color: blue; scrollbar-face-color: #e7e7e7; scrollbar-3dlight-color: #a0a0a0; scrollbar-darkshadow-color: #888888">
                            
                           
                            <asp:GridView ID="gvAllPRD" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="50" Width="395%" style="text-align: center" OnPageIndexChanging="gvAllPRD_PageIndexChanging">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="item">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltrNo" runat="server"></asp:Literal>
                                        </ItemTemplate>
                                        <HeaderStyle Width="18px" />
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="plant" DataField="plant" />
                                    <asp:BoundField HeaderText="area" DataField="area"/>
                                    <asp:BoundField HeaderText="PRD No" DataField="PRD_No"/>
                                    <asp:BoundField HeaderText="Serial No" DataField="Serial_No"/>
                                    <asp:BoundField HeaderText="Line/Equip No" DataField="Line_Equip_No"/>
                                    <asp:BoundField HeaderText="Model No" DataField="Model_No"/>
                                    <asp:BoundField HeaderText="P &amp; ID" DataField="P_ID"/>
                                    <asp:BoundField HeaderText="PRD Type" DataField="PRD_Type"/>
                                    <asp:BoundField HeaderText="valve type" DataField="valve_type"/>
                                    <asp:BoundField HeaderText="Service fluid" DataField="Service_fluid"/>
                                    <asp:BoundField HeaderText="Sizing basis" DataField="Sizing_basis"/>
                                    <asp:BoundField HeaderText="Referance By" DataField="Referance_By"/>
                                    <asp:BoundField HeaderText="Manufacturer" DataField="Manufacturer"/>
                                    <asp:BoundField HeaderText="Isolation valve" DataField="Isolation_valve"/>
                                    <asp:BoundField HeaderText="Registration date" DataField="Registration_date"/>
                                    <asp:BoundField HeaderText="Record by" DataField="Record_by"/>
                                    <asp:BoundField HeaderText="Set Press." DataField="Set_Press"/>
                                    <asp:BoundField HeaderText="Cold Diff" DataField="Cold_Diff"/>
                                    <asp:BoundField HeaderText="Blow Off temp." DataField="Blow_Off_temp"/>
                                    <asp:BoundField HeaderText="Effective orifice size" DataField="Effective_orifice_size"/>
                                    <asp:BoundField HeaderText="Max operating temp." DataField="Max_operating_temp"/>
                                    <asp:BoundField HeaderText="Max operating press." DataField="Max_operating_press"/>
                                    <asp:BoundField HeaderText="Operating temp." DataField="Operating_temp"/>
                                    <asp:BoundField HeaderText="Operating press." DataField="Operating_press"/>
                                    <asp:BoundField HeaderText="Capacity required" DataField="Capacity_required"/>
                                    <asp:BoundField HeaderText="Capacity relieving" DataField="Capacity_relieving"/>
                                    <asp:BoundField HeaderText="Su. Back press. constant" DataField="Su_Back_press_constant"/>
                                    <asp:BoundField HeaderText="Su. Back press. variable" DataField="Su_Back_press_variable"/>
                                    <asp:BoundField HeaderText="Built-up Back press. constant" DataField="Built_up_Back_press_constant"/>
                                    <asp:BoundField HeaderText="Built-up Back press. variable" DataField="Built_up_Back_press_variable"/>
                                    <asp:BoundField HeaderText="Orifice area required" DataField="Orifice_area_required"/>
                                    <asp:BoundField HeaderText="Orifice area selected" DataField="Orifice_area_selected"/>
                                    <asp:BoundField HeaderText="Spring No." DataField="Spring_No"/>
                                    <asp:BoundField HeaderText="Spring Material" DataField="Spring_Material"/>
                                    <asp:BoundField HeaderText="Interval time" DataField="Interval_time"/>
                                    <asp:BoundField HeaderText="Body &amp; bonnet Material" DataField="Body_bonnet_Material"/>
                                    <asp:BoundField HeaderText="Nozzle &amp; disc insert Mat." DataField="Nozzle_disc_insert_Mat"/>
                                    <asp:BoundField HeaderText="Norminal size inlet" DataField="Norminal_size_inlet"/>
                                    <asp:BoundField HeaderText="Norminal size outlet" DataField="Norminal_size_outlet"/>
                                    <asp:BoundField HeaderText="Location" DataField="Location"/>
                                    <asp:BoundField HeaderText="Condition for Mantence" DataField="Condition_for_Mantence"/>
                                    <asp:BoundField HeaderText="Type Colour" DataField="Type_Colour"/>
                                    <asp:BoundField HeaderText="Type Insulation" DataField="Type_Insulation"/>
                                    <asp:BoundField HeaderText="Quantity (M)" DataField="Quantity"/>
                                    <asp:BoundField HeaderText="High Scaffolding" DataField="High_Scaffolding"/>
                                    <asp:BoundField HeaderText="Function Location" DataField="Function_Location"/>
                                    <asp:BoundField HeaderText="Crane Need" DataField="Crane_Need"/>
                                    <asp:BoundField HeaderText="Flange face inlet" DataField="Flange_face_inlet"/>
                                    <asp:BoundField HeaderText="Flange face outlet" DataField="Flange_face_outlet"/>
                                    <asp:BoundField HeaderText="Press. Rating inlet" DataField="Press_Rating_inlet"/>
                                    <asp:BoundField HeaderText="Press. Rating outlet" DataField="Press_Rating_outlet"/>
                                    <asp:BoundField HeaderText="Type gasket inlet" DataField="Type_gasket_inlet"/>
                                    <asp:BoundField HeaderText="Type gasket outlet" DataField="Type_gasket_outlet"/>
                                    <asp:BoundField HeaderText="Size gasket inlet" DataField="Size_gasket_inlet"/>
                                    <asp:BoundField HeaderText="Size gasket outlet" DataField="Size_gasket_outlet"/>
                                    <asp:BoundField HeaderText="Material gasket inlet" DataField="Material_gasket_inlet"/>
                                    <asp:BoundField HeaderText="Material gasket outlet" DataField="Material_gasket_outlet"/>
                                    <asp:BoundField HeaderText="Size bolt inlet" DataField="Size_bolt_inlet"/>
                                    <asp:BoundField HeaderText="Size bolt outlet"  DataField="Size_bolt_outlet"/>
                                    <asp:BoundField HeaderText="Amout bolt inlet"  DataField="Amout_bolt_inlet"/>
                                    <asp:BoundField HeaderText="Amout bolt outlet"  DataField="Amout_bolt_outlet"/>

                                    <asp:BoundField HeaderText="Test Result"  DataField="Test_result"/>
                                     <asp:BoundField HeaderText="Last Test Date"  DataField="Last_test_date"/>
                                     <asp:BoundField HeaderText="Next Test Date"  DataField="Next_test_date"/>
                                    <asp:BoundField HeaderText="W/O"  DataField="W_O"/>
                                    <asp:BoundField HeaderText="W/O REQ date"  DataField="W_O_REQ_date"/>
                                    <asp:BoundField HeaderText="Test type"  DataField="Test_type"/>
                                    <asp:BoundField HeaderText="Pop Press(initail)"  DataField="Pop_Press_initail"/>
                                    <asp:BoundField HeaderText="Leak(initail)"  DataField="Leak_initail"/>
                                    <asp:BoundField HeaderText="Requester"  DataField="Requester"/>
                                    <asp:BoundField HeaderText="Shop test"  DataField="Shop_test"/>
                                    <asp:BoundField HeaderText="Report No"  DataField="Report_No"/>
                                    <asp:BoundField HeaderText="Reference No"  DataField="Reference_No"/>
                                    <asp:BoundField HeaderText="Test Medium"  DataField="Test_Medium"/>
                                    <asp:BoundField HeaderText="Seal No"  DataField="Seal_No"/>
                                    <asp:BoundField HeaderText="Pop Press(Final)"  DataField="Pop_Press_Final"/>
                                    <asp:BoundField HeaderText="Leak(Final)"  DataField="Leak_Final"/>
                                    <asp:BoundField HeaderText="Tight test press."  DataField="Tight_test_press"/>
                                    <asp:BoundField HeaderText="Reseat press."  DataField="Reseat_press"/>
                                    <asp:BoundField HeaderText="Reccommend"  DataField="Reccommend"/>
                                    <asp:BoundField HeaderText="Re-Test"  DataField="Re_Test"/>
                                    <asp:BoundField HeaderText="Inspector"  DataField="Inspector"/>
                                    <asp:BoundField HeaderText="Inspection Finding"  DataField="Inspection_Finding"/>
                                    <asp:BoundField HeaderText="Recommendation for next inspection"  DataField="Recommendation_next"/>

                                    <asp:BoundField HeaderText="Body(Cylinder) physical condition (As found)"  DataField="Body_Cylinder_physical_condition_As_found">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Body(Cylinder) Maintenance Result"  DataField="Body_Cylinder_Maintenance_Result">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Body(Cylinder) Comment to replace"  DataField="Body_Cylinder_Comment_to_replace">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>

                                    <asp:BoundField HeaderText="(Bonnet & Cap) Physical condition (As found)"  DataField="Bonnet_Cap_physical_condition_As_found"/>
                                    <asp:BoundField HeaderText="(Bonnet & Cap) Maintenance Result"  DataField="Bonnet_Cap_Maintenance_Result"/>
                                    <asp:BoundField HeaderText="(Bonnet & Cap) Comment to replace"  DataField="Bonnet_Cap_Comment_to_replace"/>


                                    <asp:BoundField HeaderText="Nozzle(Base) physical condition (As found)"  DataField="Nozzle_Base_physical_condition_As_found">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Nozzle(Base) Maintenance Result"  DataField="Nozzle_Base_Maintenance_Result">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="Nozzle(Base) Comment to replace"  DataField="Nozzle_Base_Comment_to_replace">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>

                                    <asp:BoundField HeaderText="(Dist Inser) Physical condition (As found)"  DataField="Dist_Inser_physical_condition_As_found"/>
                                    <asp:BoundField HeaderText="(Dist Inser) Maintenance Result"  DataField="Dist_Inser_Maintenance_Result"/>
                                    <asp:BoundField HeaderText="(Dist Inser) Comment to replace"  DataField="Dist_Inser_Comment_to_replace"/>


                                    <asp:BoundField HeaderText="(Dist Holder) physical condition (As found)"  DataField="Dist_Holder_physical_condition_As_found">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="(Dist Holder) Maintenance Result"  DataField="Dist_Holder_Maintenance_Result">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="(Dist Holder) Comment to replace"  DataField="Dist_Holder_Comment_to_replace">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>


                                     <asp:BoundField HeaderText="(Giude) Physical condition (As found)"  DataField="Giude_physical_condition_As_found"/>
                                    <asp:BoundField HeaderText="(Giude) Maintenance Result"  DataField="Giude_Maintenance_Result"/>
                                    <asp:BoundField HeaderText="(Giude) Comment to replace"  DataField="Giude_Comment_to_replace"/>


                                    <asp:BoundField HeaderText="(Spindle) physical condition (As found)"  DataField="Spindle_physical_condition_As_found">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="(Spindle) Maintenance Result"  DataField="Spindle_Maintenance_Result">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="(Spindle) Comment to replace"  DataField="Spindle_Comment_to_replace">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>


                                    <asp:BoundField HeaderText="(Spring) Physical condition (As found)"  DataField="Spring_physical_condition_As_found"/>
                                    <asp:BoundField HeaderText="(Spring) Maintenance Result"  DataField="Spring_Maintenance_Result"/>
                                    <asp:BoundField HeaderText="(Spring) Comment to replace"  DataField="Spring_Comment_to_replace"/>


                                    <asp:BoundField HeaderText="(Bellow) physical condition (As found)"  DataField="Bellow_physical_condition_As_found" >
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="(Bellow) Maintenance Result"  DataField="Bellow_Maintenance_Result">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="(Bellow) Comment to replace"  DataField="Bellow_Comment_to_replace">
                                    <ItemStyle BackColor="Yellow" />
                                    </asp:BoundField>


                                    <asp:BoundField HeaderText="Nozzle disc size (As found)"  DataField="Nozzle_disc_size_As_found"/>
                                    <asp:BoundField HeaderText="Nozzle disc size (After repair)"  DataField="Nozzle_disc_size_After_repair"/>
                                    <asp:BoundField HeaderText="Disc holder size (As found)"  DataField="Disc_holder_size_As_found"/>
                                    <asp:BoundField HeaderText="Disc holder size (After repair)"  DataField="Disc_holder_size_After_repair"/>
                                    <asp:BoundField HeaderText="Adjust bolt (As found)"  DataField="Adjust_bolt_As_found"/>
                                    <asp:BoundField HeaderText="Adjust bolt (After repair)"  DataField="Adjust_bolt_After_repair"/>
                                    <asp:BoundField HeaderText="Spring Dim"  DataField="Spring_Dim"/>
                                    <asp:BoundField HeaderText="Remark Recommendation"  DataField="Remark_Recommendation"/>




                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Size="X-Small" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </article>
    
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:Footer ID="DefaultFooterContent" runat="server" />
</asp:Content>





