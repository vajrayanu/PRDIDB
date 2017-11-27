<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DefaultMenu.ascx.cs" Inherits="PRDIDBSystem.web_Control.DefaultMenu" %>

<nav class="irpc-nav">
    <div class="irpc-nav-inner">
    <ul class="irpc-hmenu">
<li>
<a href="<%= ResolveUrl("~/Default.aspx") %>">Page 1</a>
<ul>
<li>
<a href="<%= ResolveUrl("~/new-page/new-page.aspx") %>">Subpage 1</a>
</li>
<li>
<a href="<%= ResolveUrl("~/new-page/new-page-2.aspx") %>">Subpage 2</a>
</li>
<li>
<a href="<%= ResolveUrl("~/new-page/new-page-3.aspx") %>">Subpage 3</a>
</li>
</ul>
</li>
<li>
<a href="<%= ResolveUrl("~/new-page-2.aspx") %>">Page 2</a>
</li>
</ul> 
        </div>
    </nav>
