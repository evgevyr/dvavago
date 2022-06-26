package dvavago

class Search {

    String query
    Country country

    static constraints = {
        query blank: false, nullable: false, size: 1..255
        country nullable: false
    }
}
