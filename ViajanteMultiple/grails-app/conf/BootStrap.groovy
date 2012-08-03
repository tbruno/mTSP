class BootStrap {

    def init = { servletContext ->
		
		// Descomentar para ver un ejemplo rapido
		// loadPaths("paths.csv", 0);
		
		// Salidas del algoritmo genético
		loadPaths("2_clusters.csv", 0);
		loadPaths("4_clusters.csv", 1);
		loadPaths("5_clusters.csv", 2);
		loadPaths("6_clusters.csv", 3);
		loadPaths("7_clusters.csv", 4);
    }
	
	private def loadPaths(file, id) {
		
		File cvs = new File(file);
		
		cvs.toCsvReader('separatorChar':';').eachLine() { tokens ->
			def path = new Path([
				cluster: tokens[0],
				nameFrom: tokens[1],
				countryFrom: "",
				longitudeFrom: tokens[3],
				latitudeFrom: tokens[2],
				nameTo: tokens[4],
				countryTo: "",
				longitudeTo: tokens[6],
				latitudeTo: tokens[5],
				distance: tokens[7],
				outputId: id
			])
			
			path.save()
		}
	}
	
    def destroy = {
    }	
}
