package dvavago

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/search/index")
        "/hotels"(view: "/hotel/index")
        "/countries"(view: "/country/index")
        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}
