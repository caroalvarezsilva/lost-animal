import grails.util.Holders

class SearchController {

    def searchService

    def index() {

        render (view:'index', model:[departments : Holders.config.lostAnimal.departments,
                                     animals : Holders.config.lostAnimal.animals])
    }

    def searchPost() {
        def fromDate = request.parameters.fromDate_day[0] + request.parameters.fromDate_month[0] + request.parameters.fromDate_year[0]
        def toDate = request.parameters.toDate_day[0] + request.parameters.toDate_month[0] + request.parameters.toDate_year[0]
        def params = [
                animal: request.parameters.animal[0],
                place: request.parameters.department[0],
                fromDate: fromDate,
                toDate: toDate,
        ]
        def posts = searchService.getPosts(params)


        render (view:'index', model:[departments : Holders.config.lostAnimal.departmentsPlus,
                                     animals : Holders.config.lostAnimal.animals,
                                     posts : posts
        ])


    }
}
