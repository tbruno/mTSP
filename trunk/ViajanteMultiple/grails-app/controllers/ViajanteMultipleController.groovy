import org.ietf.jgss.Oid;

import grails.converters.JSON
import grails.converters.XML

class ViajanteMultipleController {

    def index() { 
    	def output = [:]
		
		def allPaths = Path.findAllByOutputId(4)
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
