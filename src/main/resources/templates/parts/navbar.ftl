<#include "security.ftl">
<#import "login.ftl" as l>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Sweater</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedcontent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/main">Message</a>
            </li>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">User List</a>
            </li>
            </#if>
        </ul>

        <div class="navbar-text mr-3">${name}</div>
        <@l.logout/>
    </div>
</nav>