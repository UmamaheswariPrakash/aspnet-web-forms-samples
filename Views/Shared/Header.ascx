﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="ReportsWebFormsSamples.Header" %>

<div class="ej-sb-header">
    <div class="ej-sb-left-side">
        <div class="ej-sb-hamburger-icon ej-sb-icons" onclick="onHamBurgerClick()"></div>
        <div class="ej-sb-platform-name">Bold Reports for ASP.NET WebForms</div>
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

                <% 
                    dynamic data = sampledata;
                    { %>
                <a class="dropdown-item active"><%= data.platform %></a>
                <% }
                    foreach (var platform in data.otherPlatforms)
                    { %>
                <a class="dropdown-item" onclick='platformSwitcher("<%= platform.Name%>")'><%= platform.Name %></a>
                <% }
                %>
            </div>
        </div>
    </div>
    <div class="ej-sb-right-side">
        <!-- We hided this element as per management instruction -->
        <!-- <a class="ej-sb-button nav-link bold-schedule-demo" href="" target="_blank">Schedule Free Demo</a> -->
        <a class="ej-sb-button nav-link product-detail" href="https://www.boldreports.com/embedded-reporting/aspnet-web-forms-report-viewer" target="_blank">Product Detail</a>
        <a class="ej-sb-button nav-link try-it-free" href="https://app.boldid.net/reporting/embedded/register?plan=120&evaluation=v2&leadsource=demos.boldreports.com&gclid=&referrerroriginurl=https://demos.boldreports.com/pricing&secondaryreferraloriginurl=https://demos.boldreports.com/" target="_blank">Try it Free</a>
    </div>
</div>
