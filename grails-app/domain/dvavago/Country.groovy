package dvavago

class Country {
    String name
    String capital

    static constraints = {
        name blank: false, nullable: false, unique: true, size: 1..255
        capital blank: false, nullable: false, size: 1..128
    }

    static mapping = {
        table("countries")
        name length: 255
        capital length: 128
    }

    Country(String name, String capital) {
        this.name = name
        this.capital = capital
    }
}
