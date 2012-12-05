﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_Layout.master" Inherits="System.Web.Mvc.ViewPage<MvcStore.Models.LogOnModel>" %>
<asp:Content ID="headContent" ContentPlaceHolderID="headGeneral" runat="server">
	<title>Log On</title>
</asp:Content>
<asp:Content ID="MainContentContent" ContentPlaceHolderID="ContentPane" runat="server">
<h2>Log On</h2>
<p>
    Please enter your user name and password. <%: Html.ActionLink("Register", "Register") %> if you don't have an account.
</p>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js")%>" type="text/javascript"></script>

<%: Html.ValidationSummary(true, "Login was unsuccessful. Please correct the errors and try again.") %>

<% using (Html.BeginForm()) { %>
    <div>
        <fieldset>
            <legend>Account Information</legend>

            <div class="editor-label">
                <%: Html.LabelFor(m => m.UserName) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.UserName) %>
                <%: Html.ValidationMessageFor(m => m.UserName) %>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(m => m.Password) %>
            </div>
            <div class="editor-field">
                <%: Html.PasswordFor(m => m.Password) %>
                <%: Html.ValidationMessageFor(m => m.Password) %>
            </div>

            <div class="editor-label">
                <%: Html.CheckBoxFor(m => m.RememberMe) %>
                <%: Html.LabelFor(m => m.RememberMe) %>
            </div>

            <p>
                <input type="submit" value="Log On" />
            </p>
        </fieldset>
    </div>
<% } %>
</asp:Content>
