import org.springframework.dao.DataIntegrityViolationException

class CityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	static scaffold = true
}
