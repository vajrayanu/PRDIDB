<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GHeader.ascx.cs" Inherits="PRDIDBSystem.web_Control.GHeader" %>


<div class="irpc-shapes">
    <div class="irpc-object1349679744" data-left="0%"></div>

</div>
<h1 class="irpc-headline" data-left="78.09%">
    <a href="#">Login by : <asp:Literal ID="ltrName" runat="server"></asp:Literal></a>
</h1>
<h2 class="irpc-slogan" data-left="99.61%">Type : <asp:Literal ID="ltrType" runat="server"></asp:Literal></h2>




<div id="irpc-flash-area">
    <div id="irpc-flash-container">
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="900" height="225" id="irpc-flash-object">
            <param name="movie" value="<%= ResolveUrl("~/images/Gweb/flash.swf") %>">
            <param name="quality" value="high">
            <param name="scale" value="exactfit">
            <param name="wmode" value="transparent">
            <param name="flashvars" value="color1=0xFFFFFF&amp;alpha1=.50&amp;framerate1=24&amp;loop=true&amp;wmode=transparent">
            <param name="swfliveconnect" value="true">
            <!--[if !IE]>-->
            <object type="application/x-shockwave-flash" data="<%= ResolveUrl("~/images/Gweb/flash.swf") %>" width="900" height="225">
                <param name="quality" value="high">
                <param name="scale" value="exactfit">
                <param name="wmode" value="transparent">
                <param name="flashvars" value="color1=0xFFFFFF&amp;alpha1=.50&amp;framerate1=24&amp;loop=true&amp;wmode=transparent">
                <param name="swfliveconnect" value="true">
                <!--<![endif]-->
                <div class="irpc-flash-alt"><a href="http://www.adobe.com/go/getflashplayer">
                    <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player"></a></div>
                <!--[if !IE]>-->
            </object>
            <!--<![endif]-->
        </object>
    </div>
</div>
