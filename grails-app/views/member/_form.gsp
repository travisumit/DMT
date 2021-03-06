<%@ page import="digitalmediarecords.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="member.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${memberInstance?.username}"/>

</div>

<g:if test="${memberInstance?.id}">
	<g:select id="role" name="role" class="form-control"  from="${digitalmediarecords.Role.list()}" optionKey="authority" noSelection="['':'-Select Role-']"
			  optionValue="authority" required="" onchange="roleChanged(this);" value="${digitalmediarecords.UserRole.findByUser(memberInstance)?.role?.authority}"/>
</g:if>
<g:else>
	<g:select id="role" name="role" class="form-control" onchange="roleChanged(this);" from="${digitalmediarecords.Role.list()}" optionKey="authority" noSelection="['':'-Select Role-']"
			  optionValue="authority" required=""/>
</g:else>
<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="member.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${memberInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="member.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" required="" value="${memberInstance?.fullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'contact', 'error')} required">
	<label for="contact">
		<g:message code="member.contact.label" default="Contact" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contact" maxlength="10" pattern="${memberInstance.constraints.contact.matches}" required="" value="${memberInstance?.contact}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="member.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${memberInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="member.accountExpired.label" default="Account Expired" />

	</label>
	<g:checkBox name="accountExpired" value="${memberInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="member.accountLocked.label" default="Account Locked" />

	</label>
	<g:checkBox name="accountLocked" value="${memberInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="member.enabled.label" default="Enabled" />

	</label>
	<g:checkBox name="enabled" value="${memberInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="member.passwordExpired.label" default="Password Expired" />

	</label>
	<g:checkBox name="passwordExpired" value="${memberInstance?.passwordExpired}" />

</div>

