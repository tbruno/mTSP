import org.ietf.jgss.Oid;

import grails.converters.JSON
import grails.converters.XML

class ViajanteMultipleController {

    def index() { 
    	def id = params.id == null ? 4 : params.id 
		def output = [:]
					
		def allPaths = Path.findAllByOutputId(id)
		def clusters = allPaths.cluster.toSet()
		
		clusters.each{ cluster ->
			def pathsInCluster = allPaths.findAll { path ->
					path.cluster == cluster
				}
			output.put(cluster, pathsInCluster);
		}
		
		[output: (output as JSON).toString(), clusters: (clusters as JSON).toString()]	
	}
}
