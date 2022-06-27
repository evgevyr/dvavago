package dvavago

class Hotel {
    String name
    Country country
    Integer stars
    String link

    static constraints = {
        name blank: false, nullable: false, size: 1..255, validator: {val, obj ->
            if (findWhere(name: val, country: obj.country) != null && findWhere(name: val, country: obj.country).id != obj.id)
                return "default.hotel.not.unique.message"
        }
        country nullable: false
        stars nullable: false, min: 1, max: 5
        link nullable: true, blank: true, url: true
    }

    static mapping = {
        table("hotels")
        name length: 255
        stars length: 1
    }

    Hotel(String name, Long countryID, Integer stars, String link) {
        this.name = name
        this.stars = stars
        this.link = link
        this.country = Country.findWhere(id: countryID)
    }
}
