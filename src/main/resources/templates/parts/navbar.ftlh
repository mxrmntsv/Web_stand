<#include "security.ftlh" >
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Engine</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Messages</a>
                </li>
                <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">User List</a>
                </li>
                </#if>
                <li class="nav-item">
                    <a class="nav-link" href="/user/myprofile">My Profile</a>
                </li>
            </ul>
            <div>
                <span>${name}</span>
            </div>
            <#if known>
            <form action="/logout" method="post">
                <input type="submit" value="Sign Out"/>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
            </form>
            </#if>
        </div>
    </div>
</nav>