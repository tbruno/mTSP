



<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'cluster', 'error')} required">
	<label for="cluster">
		<g:message code="path.cluster.label" default="Cluster" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="cluster" required="" value="${fieldValue(bean: pathInstance, field: 'cluster')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'countryFrom', 'error')} ">
	<label for="countryFrom">
		<g:message code="path.countryFrom.label" default="Country From" />
		
	</label>
	<g:textField name="countryFrom" value="${pathInstance?.countryFrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'countryTo', 'error')} ">
	<label for="countryTo">
		<g:message code="path.countryTo.label" default="Country To" />
		
	</label>
	<g:textField name="countryTo" value="${pathInstance?.countryTo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'distance', 'error')} required">
	<label for="distance">
		<g:message code="path.distance.label" default="Distance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="distance" required="" value="${fieldValue(bean: pathInstance, field: 'distance')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'latitudeFrom', 'error')} required">
	<label for="latitudeFrom">
		<g:message code="path.latitudeFrom.label" default="Latitude From" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="latitudeFrom" required="" value="${fieldValue(bean: pathInstance, field: 'latitudeFrom')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'latitudeTo', 'error')} required">
	<label for="latitudeTo">
		<g:message code="path.latitudeTo.label" default="Latitude To" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="latitudeTo" required="" value="${fieldValue(bean: pathInstance, field: 'latitudeTo')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'longitudeFrom', 'error')} required">
	<label for="longitudeFrom">
		<g:message code="path.longitudeFrom.label" default="Longitude From" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="longitudeFrom" required="" value="${fieldValue(bean: pathInstance, field: 'longitudeFrom')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'longitudeTo', 'error')} required">
	<label for="longitudeTo">
		<g:message code="path.longitudeTo.label" default="Longitude To" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="longitudeTo" required="" value="${fieldValue(bean: pathInstance, field: 'longitudeTo')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'nameFrom', 'error')} ">
	<label for="nameFrom">
		<g:message code="path.nameFrom.label" default="Name From" />
		
	</label>
	<g:textField name="nameFrom" value="${pathInstance?.nameFrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: pathInstance, field: 'nameTo', 'error')} ">
	<label for="nameTo">
		<g:message code="path.nameTo.label" default="Name To" />
		
	</label>
	<g:textField name="nameTo" value="${pathInstance?.nameTo}"/>
</div>

