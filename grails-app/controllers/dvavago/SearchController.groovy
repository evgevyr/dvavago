package dvavago

class SearchController {

    def search() {
        render(params.get("searchString"));
    }
}
