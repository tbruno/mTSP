

<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'path.label', default: 'Path')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-path" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-path" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list path">
			
				<g:if test="${pathInstance?.cluster}">
				<li class="fieldcontain">
					<span id="cluster-label" class="property-label"><g:message code="path.cluster.label" default="Cluster" /></span>
					
						<span class="property-value" aria-labelledby="cluster-label"><g:fieldValue bean="${pathInstance}" field="cluster"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pathInstance?.countryFrom}">
				<li class="fieldcontain">
					<span id="countryFrom-label" class="property-label"><g:message code="path.countryFrom.label" default="Country From" /></span>
					
						<span class="property-value" aria-labelledby="countryFrom-label"><g:fieldValue bean="${pathInstance}" field="countryFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pathInstance?.countryTo}">
				<li class="fieldcontain">
					<span id="countryTo-label" class="property-label"><g:message code="path.countryTo.label" default="Country To" /></span>
					
						<span class="property-value" aria-labelledby="countryTo-label"><g:fieldValue bean="${pathInstance}" field="countryTo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pathInstance?.distance}">
				<li class="fieldcontain">
					<span id="distance-label" class="property-label"><g:message code="path.distance.label" default="Distance" /></span>
					
						<span class="property-value" aria-labelledby="distance-label"><g:fieldValue bean="${pathInstance}" field="distance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pathInstance?.latitudeFrom}">
				<li class="fieldcontain">
					<span id="latitudeFrom-label" class="property-label"><g:message code="path.latitudeFrom.label" default="Latitude From" /></span>
					
						<span class="property-value" aria-labelledby="latitudeFrom-label"><g:fieldValue bean="${pathInstance}" field="latitudeFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pathInstance?.latitudeTo}">
				<li class="fieldcontain">
					<span id="latitudeTo-label" class="property-label"><g:message code="path.latitudeTo.label" default="Latitude To" /></span>
					
						<span class="property-value" aria-labelledby="latitudeTo-label"><g:fieldValue bean="${pathInstance}" field="latitudeTo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pathInstance?.longitudeFrom}">
				<li class="fieldcontain">
					<span id="longitudeFrom-label" class="property-label"><g:message code="path.longitudeFrom.label" default="Longitude From" /></span>
					
						<span class="property-value" aria-labelledby="longitudeFrom-label"><g:fieldValue bean="${pathInstance}" field="longitudeFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pathInstance?.longitudeTo}">
				<li class="fieldcontain">
					<span id="longitudeTo-label" class="property-label"><g:message code="path.longitudeTo.label" default="Longitude To" /></span>
					
						<span class="property-value" aria-labelledby="longitudeTo-label"><g:fieldValue bean="${pathInstance}" field="longitudeTo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pathInstance?.nameFrom}">
				<li class="fieldcontain">
					<span id="nameFrom-label" class="property-label"><g:message code="path.nameFrom.label" default="Name From" /></span>
					
						<span class="property-value" aria-labelledby="nameFrom-label"><g:fieldValue bean="${pathInstance}" field="nameFrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pathInstance?.nameTo}">
				<li class="fieldcontain">
					<span id="nameTo-label" class="property-label"><g:message code="path.nameTo.label" default="Name To" /></span>
					
						<span class="property-value" aria-labelledby="nameTo-label"><g:fieldValue bean="${pathInstance}" field="nameTo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${pathInstance?.id}" />
					<g:link class="edit" action="edit" id="${pathInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
