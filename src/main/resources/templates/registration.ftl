<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div class="mb-1"><b>Add new User</b></div>
${message!}
<@l.login "/registration" true/>
</@c.page>