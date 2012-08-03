

import org.junit.*
import grails.test.mixin.*

@TestFor(PathController)
@Mock(Path)
class PathControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/path/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pathInstanceList.size() == 0
        assert model.pathInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.pathInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pathInstance != null
        assert view == '/path/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/path/show/1'
        assert controller.flash.message != null
        assert Path.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/path/list'


        populateValidParams(params)
        def path = new Path(params)

        assert path.save() != null

        params.id = path.id

        def model = controller.show()

        assert model.pathInstance == path
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/path/list'


        populateValidParams(params)
        def path = new Path(params)

        assert path.save() != null

        params.id = path.id

        def model = controller.edit()

        assert model.pathInstance == path
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/path/list'

        response.reset()


        populateValidParams(params)
        def path = new Path(params)

        assert path.save() != null

        // test invalid parameters in update
        params.id = path.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/path/edit"
        assert model.pathInstance != null

        path.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/path/show/$path.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        path.clearErrors()

        populateValidParams(params)
        params.id = path.id
        params.version = -1
        controller.update()

        assert view == "/path/edit"
        assert model.pathInstance != null
        assert model.pathInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/path/list'

        response.reset()

        populateValidParams(params)
        def path = new Path(params)

        assert path.save() != null
        assert Path.count() == 1

        params.id = path.id

        controller.delete()

        assert Path.count() == 0
        assert Path.get(path.id) == null
        assert response.redirectedUrl == '/path/list'
    }
}
