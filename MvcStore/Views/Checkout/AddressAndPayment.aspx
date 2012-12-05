﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_LayoutDetail.master" Inherits="System.Web.Mvc.ViewPage<MvcStore.Models.Order>" %>
<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
	<title>Address And Payment</title>	
</asp:Content>
<asp:Content ID="MainContentContent" ContentPlaceHolderID="MainContent" runat="server">

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>
<% using (Html.BeginForm()) { %>
    
    <h2>Address And Payment</h2>
    <fieldset>
        <legend>Shipping Information</legend>
        <%: Html.EditorForModel() %>
    </fieldset>
    <fieldset>
        <legend>Payment</legend>
        <p>We're running a promotion: all products are free 
            with the promo code: "FREE"</p>
        <div class="editor-label">
            <%: Html.Label("Promo Code") %>
        </div>
        <div class="editor-field">
            <%: Html.TextBox("PromoCode") %>
        </div>
    </fieldset>
    
    <input type="submit" value="Submit Order" />
<% } %>

</asp:Content>