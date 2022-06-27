package dvavago

import java.util.function.Consumer

class SearchController {

    def index() {

    }

    def query() {
        String hotelName = params.get("hotelName")
        Country country = Country.findById(params.get("country.id").toString().toInteger())

        List<Hotel> resultList = Hotel.findAllWhere(country: country)
        Iterator i = resultList.iterator()

        while (i.hasNext()) {
            if (i.next().name.toLowerCase().indexOf(hotelName.toLowerCase()) == -1)
                i.remove()
        }

        resultList.sort(new Comparator<Hotel>() {
            @Override
            int compare(Hotel o1, Hotel o2) {
                return o2.stars.compareTo(o1.stars) == 0 ? o1.name.compareToIgnoreCase(o2.name) : o2.stars.compareTo(o1.stars)
            }
        })

        respond resultList, view: "/search/result"
    }
}
