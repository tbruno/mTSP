



<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="city.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${cityInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="city.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="latitude" required="" value="${fieldValue(bean: cityInstance, field: 'latitude')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="city.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="longitude" required="" value="${fieldValue(bean: cityInstance, field: 'longitude')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cityInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="city.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${cityInstance?.name}"/>
</div>

