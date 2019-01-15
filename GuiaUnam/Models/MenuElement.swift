
import UIKit

struct MenuElement{
    let name : String
    let description: String
    //let image: UIImage
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
        //self.image = image
    }
    
    
    static func allElementsSignedIn() -> [MenuElement]{
        return [
            MenuElement(name: "Favoritos", description: "Descubre tus museos favoritos"),
            MenuElement(name: "Por visitar", description: "Organiza tus visitas"),
            MenuElement(name: "Recomendaciones", description: "Basado en tus consultas"),
            MenuElement(name: "Eventos próximos", description: "Nuevos eventos en museos")
            ]
    }
    
    static func allElementsUnsigned() -> [MenuElement]{
        return [
            MenuElement(name: "Iniciar Sesión", description: "No te pierdas de lo nuevo"),
            MenuElement(name: "Cerca de ti", description: "Visita un museo cercano")
        ]
    }
    
    //Opciones del menú que aparecerían ya sea si se inició sesión o no.
    static func allElementsMedley() -> [MenuElement]{
        return [
            MenuElement(name: "Noticias", description: "Entérate de lo nuevo")
        ]
    }
}
