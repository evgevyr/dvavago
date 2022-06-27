package dvavago

class Search {

    String hotelName
    Country country

    static constraints = {
        hotelName blank: false, nullable: false, size: 1..255
        country nullable: false
    }
}
