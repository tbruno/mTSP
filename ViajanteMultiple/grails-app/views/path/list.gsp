

<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'path.label', default: 'Path')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-path" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-path" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="cluster" title="${message(code: 'path.cluster.label', default: 'Cluster')}" />
					
						<g:sortableColumn property="countryFrom" title="${message(code: 'path.countryFrom.label', default: 'Country From')}" />
					
						<g:sortableColumn property="countryTo" title="${message(code: 'path.countryTo.label', default: 'Country To')}" />
					
						<g:sortableColumn property="distance" title="${message(code: 'path.distance.label', default: 'Distance')}" />
					
						<g:sortableColumn property="latitudeFrom" title="${message(code: 'path.latitudeFrom.label', default: 'Latitude From')}" />
					
						<g:sortableColumn property="latitudeTo" title="${message(code: 'path.latitudeTo.label', default: 'Latitude To')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pathInstanceList}" status="i" var="pathInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pathInstance.id}">${fieldValue(bean: pathInstance, field: "cluster")}</g:link></td>
					
						<td>${fieldValue(bean: pathInstance, field: "countryFrom")}</td>
					
						<td>${fieldValue(bean: pathInstance, field: "countryTo")}</td>
					
						<td>${fieldValue(bean: pathInstance, field: "distance")}</td>
					
						<td>${fieldValue(bean: pathInstance, field: "latitudeFrom")}</td>
					
						<td>${fieldValue(bean: pathInstance, field: "latitudeTo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pathInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
