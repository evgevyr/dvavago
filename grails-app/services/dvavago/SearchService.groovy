package dvavago

import grails.gorm.services.Service

@Service(Search)
interface SearchService {

    Search get(Serializable id)

    List<Search> list(Map args)

    Long count()

    void delete(Serializable id)

    Search save(Search search)

}