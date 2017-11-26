package lost.animal

class SearchService {

    def getPosts(params) {
        //def response = lostAnimalRestClient.getLostAnimalsPost()
        def posts = []
        def post_gato = [message: "Tengo a esta #perrita súper instalada en mi casa apareció anoche. Es mansa y chica. Es probable que haya parido porque tiene las ubres bastante grandes. El caso es que tengo tres perros y no puedo con otro. Se pueden comunicar conmigo si están interesados en darle un hogar. Es muy mansa, ya la he agarrado varías veces porque mis perros la atomizan y es una tierna. Estoy en barrio peñarol."]
        def post_perro = [message: "Se encontro cachorro negro, en la zona de interbalnearia y marquez castro. Se busca urgente al dueño. Cel: 092298296 "]
        posts.add(post_gato)
        posts.add(post_perro)
        return posts


    }
}
