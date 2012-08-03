<%@ page import="City"%>
<html>
    <head>
        <meta name="layout" content="main">
        
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script> 
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>  
        <script type="text/javascript" src="http://www.pittss.lv/jquery/gomap/js/jquery.gomap-1.3.2.min.js"></script>
                        
        <style> 
        #map { 
            width:600px; 
            height:450px; 
        } 
        </style> 
        
        <script>
        var jsonPaths = '${output}';
        var jsonClusters = '${clusters}';
        var paths = jQuery.parseJSON(jsonPaths);
        var clusters = jQuery.parseJSON(jsonClusters);
        var step = -1;
        var cluster = clusters[0];
                
        $(function() { 

        	function initClusterCombo() {
        		for (i=0; i < clusters.length; i++) {
            		var clusterOption = clusters[i];
        			$("<option value='" + clusterOption + "'>" + clusterOption + "</option>").appendTo("#clusterSelector");
            	}

        	    $("#clusterSelector").change(function() {
        	    	step = -1;
        	    	cluster = $("#clusterSelector").val();
        	    	$.goMap.clearMarkers();
        	    	$.goMap.clearOverlays('polyline');
        	    	drawCitiesInCurrentCluster();
        	    	drawPathsInCurrentCluster();
        	    	setClusterInfo();

                    $("#stepInfoNotAvailable").css('display', 'inline');
                    $("#stepInfo").css('display', 'none');
                });            	     	
            }

            function setClusterInfo() {
                $("#cantidadDeCiudadesEnCluster").html("Cantidad de ciudades: " + getNumberOfCitiesInCluster(cluster));
                $("#distanciaTotalEnCluster").html("Distancia total: " + getDistanceInCluster(cluster));
            }
        	                       	
        	function createMap() {
            	$("#map").goMap({ 
	                zoom: 2,
	                latitude: 0.0,
	                longitude: 0.0,
	                maptype: 'ROADMAP',
	                mapTypeControl: false,
	            }); 
        	}

        	function drawCitiesInCurrentCluster() {
        		drawCities(cluster);
        		fitBoundsInCitiesInCurrentCluster();
        	}

        	function fitBoundsInCitiesInCurrentCluster() {
                var markerIds = getMarkerIdsFromCluster(cluster);
                $.goMap.fitBounds('markers', markerIds);
            }

        	function drawPathsInCurrentCluster() {
        		drawPaths(cluster);
            }

            function getDistanceInCluster(_cluster) {
                var _paths = paths[_cluster];
                var distance = 0.0;
                	
                for (var i=0; i < _paths.length; i++) {
                	distance = distance + _paths[i].distance
                }

                return Math.round(distance * 100) / 100;
            }
        	
            function getNumberOfCitiesInCluster(_cluster) {
                return paths[cluster].length;
            }
        	
            function getMarkerIdsFromCluster(_cluster) {

            	var markerIds = [];
            	
            	for (var i=0; i < getNumberOfCitiesInCluster(_cluster); i++) {
            		var markerId = _cluster + '-' + i;
            		markerIds.push(markerId);
            	}

            	return markerIds;
            }
        	
        	function drawCities(_cluster) {
            	var _paths = paths[_cluster]
                var image_base = '${resource(dir: "images/clusters/", file: "")}'
                    
                    for (var i=0; i < _paths.length; i++) {
                        var name = _paths[i].nameFrom
                        var country = _paths[i].countryFrom
                        var latitude = _paths[i].latitudeFrom
                        var longitude = _paths[i].longitudeFrom
                        var cluster = _paths[i].cluster
                        var image = image_base + cluster + ".png"
                        var markerId = cluster + '-' + i

                        $.goMap.createMarker({  
                            latitude: latitude,
                            longitude: longitude,
                            title: name + ',' + country,
                            icon: image,
                            id: markerId,
                        }); 
                    }
        	}

        	function drawPaths(_cluster) {
        		var _paths = paths[_cluster];
        		
				for (i=0; i < _paths.length; i++) {
				
				    var latitudeFrom = _paths[i].latitudeFrom
				    var longitudeFrom = _paths[i].longitudeFrom
				
				    var latitudeTo = _paths[i].latitudeTo
				    var longitudeTo = _paths[i].longitudeTo
				
				    var lineId = 'line-' + _cluster + '-' + i
				    
				    $.goMap.createPolyline({
				        color: "#000000",
				        opacity: 0.5,
				        weight: 2,
				        id: lineId,
				        coords: [{
				                latitude: latitudeFrom,
				                longitude: longitudeFrom
				            },{ 
				                latitude: latitudeTo, 
				                longitude: longitudeTo
				            }]
				    });
				
				}
            }

            function drawAllCities() {
                for (var i=0; i < clusters.length; i++) {
                    drawCities(clusters[i]);
                }
            }
               
            function getFromCityId() {
                return cluster + '-' + step
            }

            function getToCityId() {
            	var _paths = paths[cluster];
                var internalStep = 0;
            	
            	if (step != _paths.length - 1) {
            		internalStep = step + 1;
                }
            	                
                return cluster + '-' + internalStep  
            }

            function getLineId() {
                return 'line-' + cluster + '-' + step
            }
            
            function drawStep() {
                $.goMap.setOverlay('polyline', getLineId(), { 
                       strokeColor: '#00CC00',
                       strokeOpacity: 0.5,
                       strokeWeight: 8,
                   });

                $.goMap.fitBounds('markers',[getFromCityId(),getToCityId()]);
            }

            function undoLineColor() {
                $.goMap.setOverlay('polyline', getLineId(), { 
                    strokeColor: '#000000',
                    strokeOpacity: 0.5,
                    strokeWeight: 2,
                });             
            }

            $("#primerPaso").click(function() {
                $.goMap.clearOverlays('polyline');
                drawPathsInCurrentCluster();
                fitBoundsInCitiesInCurrentCluster();

                step = -1

                $("#stepInfoNotAvailable").css('display', 'inline');
                $("#stepInfo").css('display', 'none');
            });

            $("#pasoSiguiente").click(function() {
            	var _paths = paths[cluster];
            	
                if (step < _paths.length - 1) {
                    step = step + 1
                    drawStep()
                }
            });

            $("#pasoAnterior").click(function() {
                if (step > 0) {
                    undoLineColor()
                    step = step - 1
                    drawStep()
                }
            });

            $("#pasoAnterior").click(update);
            $("#pasoSiguiente").click(update);

            function update() {
            	<%-- Actualizamos la información del tramo --%>
                var visualStep = step + 1
            	$("#tramoNumero").html("Número de tramo: " + visualStep);
            	            	
            	var _paths = paths[cluster];

            	var citiFrom = _paths[step].nameFrom
            	var citiTo = _paths[step].nameTo
            	
            	$("#fromCity").html("Ciudad origen: " + citiFrom)
                $("#toCity").html("Ciudad destino: " + citiTo)

                var distance = Math.round(_paths[step].distance * 100) / 100;
                
                $("#distanciaTramo").html("Distancia: " + distance);

                $("#stepInfoNotAvailable").css('display', 'none');
                $("#stepInfo").css('display', 'inline');
            }

            createMap();
            initClusterCombo();
            setClusterInfo();
            drawCitiesInCurrentCluster();
            drawPathsInCurrentCluster();
        }); 
        </script>
        
    </head>
    <body>
        <div id="map"></div>
    </body>
</html>
