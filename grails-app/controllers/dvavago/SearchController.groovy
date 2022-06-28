package dvavago

class SearchController {

    def index() {

    }

    def query() {
        String hotelName = params.get("hotelName").toString().trim()
        Long countryID = params.get("country.id").toString().toLong()

        def criteria = Hotel.createCriteria()
        def resultsList = criteria.list {
            eq("country.id", countryID)
            and {
                ilike("name", "%${hotelName}%")
            }
            order("stars", "desc")
            order("name", "asc")
        }

        respond resultsList, view: "/search/result"
    }
}
