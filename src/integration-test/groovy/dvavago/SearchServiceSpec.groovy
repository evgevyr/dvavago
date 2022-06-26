package dvavago

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class SearchServiceSpec extends Specification {

    SearchService searchService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Search(...).save(flush: true, failOnError: true)
        //new Search(...).save(flush: true, failOnError: true)
        //Search search = new Search(...).save(flush: true, failOnError: true)
        //new Search(...).save(flush: true, failOnError: true)
        //new Search(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //search.id
    }

    void "test get"() {
        setupData()

        expect:
        searchService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Search> searchList = searchService.list(max: 2, offset: 2)

        then:
        searchList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        searchService.count() == 5
    }

    void "test delete"() {
        Long searchId = setupData()

        expect:
        searchService.count() == 5

        when:
        searchService.delete(searchId)
        sessionFactory.currentSession.flush()

        then:
        searchService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Search search = new Search()
        searchService.save(search)

        then:
        search.id != null
    }
}
