<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	
	<body>
<div id="wrap">
  <div id="masthead">
    <h1>Viajante Múltiple</h1>
  </div>
  <div id="menucontainer">
    <div id="menunav">
      <ul>
        <li><g:link action="index" id="4"><span>7 Clusters</span></g:link></li>
        <li><g:link action="index" id="3"><span>6 Clusters</span></g:link></li>
        <li><g:link action="index" id="2"><span>5 Clusters</span></g:link></li>
        <li><g:link action="index" id="1"><span>4 Clusters</span></g:link></li>
        <li><g:link action="index" id="0"><span>2 Clusters</span></g:link></li>
      </ul>
    </div>
  </div>
  <div id="container">
    <div id="sidebar">
        <h3 id="cluster">Cluster</h3>
        <ul>
            <li>Cluster: <select id="clusterSelector"></select></li>
            <li><div id="cantidadDeCiudadesEnCluster"></div></li>
            <li><div id="distanciaTotalEnCluster"></div></li>
        </ul>
      
        <h3 id="step">Tramo</h3>

        <div id="stepInfoNotAvailable">
            <ul>
              <li>Utilice la botonera para comenzar el recorrido!</li>
            </ul>
        </div>        
        <div id="stepInfo" style="display:none;">
	        <ul>
	          <li><div id="tramoNumero">Número de tramo: -</div></li>
	          <li><div id="fromCity">Ciudad origen: -</div></li>
	          <li><div id="toCity">Ciudad destino: -</div></li>
	          <li><div id="distanciaTramo">Distancia: -</div></li>
	        </ul>
        </div>
        
        <div class="buttons">
            <input title="Back" class="start" type="button" name="primerPaso" id="primerPaso" />
            <input title="Previous"  class="previous" type="button" name="pasoAnterior" id="pasoAnterior" />
            <input title="Next"  class="next" type="button" name="pasoSiguiente" id="pasoSiguiente" />
        </div>
    </div>
    <div id="content">
            <g:layoutBody/>
    </div>
  </div>
  <div id="footer">75.50 - Introducción a los Sistemas Inteligentes</div>
    
</div>
        <g:javascript library="application"/>
        <r:layoutResources />
</body>
</html>