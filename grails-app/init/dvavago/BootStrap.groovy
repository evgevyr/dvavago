package dvavago

import java.util.function.Consumer

class BootStrap {

    void initObj(String path, Consumer<List<String>> consumer) {
        new File(path).readLines().forEach(new Consumer<String>() {
            @Override
            void accept(String s) {
                List<String> stringArray = new ArrayList<>()
                stringArray.addAll(s.split(";"))

                consumer.accept(stringArray)
            }
        })
    }

    def init = { servletContext ->
        initObj("grails-app/assets/countries.csv", new Consumer<List<String>>() {
            @Override
            void accept(List<String> strings) {
                new Country(strings.get(0), strings.get(1)).save()
            }
        })

        initObj("grails-app/assets/hotels.csv", new Consumer<List<String>>() {
            @Override
            void accept(List<String> strings) {
                new Hotel(strings.get(0), strings.get(1).toLong(), strings.get(2).toInteger(), strings.get(3)).save()
            }
        })
    }

    def destroy = {
    }

}
