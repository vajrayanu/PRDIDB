<%@ Page Title="" Language="C#" MasterPageFile="~/design/GuestReportMasterPage.Master" AutoEventWireup="true" CodeBehind="GHistory_Card.aspx.cs" Inherits="PRDIDBSystem.page_Guest.GHistory_Card" %>
<%--<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms.ReportViewer" tagprefix="rsweb" %>--%>


<%--<%@ Register TagPrefix="art" TagName="Header" Src="~/web_Control/GHeader.ascx" %>
<%@ Register TagPrefix="art" TagName="Menu" Src="~/web_Control/GMenu.ascx" %>
<%@ Register TagPrefix="art" TagName="Sidebar1" Src="~/web_Control/GSidebar1.ascx" %>
<%@ Register TagPrefix="art" TagName="Footer" Src="~/web_Control/GFooter.ascx" %>--%>



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

<asp:Content ID="Content7" ContentPlaceHolderID="SheetContentPlaceHolder" runat="server">
    <asp:Button ID="btnPDF" runat="server" Height="22px" Text="Export to PDF" OnClick="btnPDF_Click"/>
</asp:Content>

<%--<asp:Content ID="Content8" ContentPlaceHolderID="FooterContentPlaceHolder" runat="server">
    <art:footer ID="DefaultFooterContent" runat="server" />
</asp:Content>--%>

  <%--&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportEmbeddedResource="PRDIDBSystem.page_Guest.Report1.rdlc">
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="DataSet1TableAdapters.PRD_DATATableAdapter"></asp:ObjectDataSource>--%>