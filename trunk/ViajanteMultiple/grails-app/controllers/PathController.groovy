import org.springframework.dao.DataIntegrityViolationException

class PathController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	static scaffold = true
}
