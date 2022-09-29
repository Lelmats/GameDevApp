//
//  Game.swift
//  Games_List_P2
//
//  Created by Alumno on 9/29/22.
//  Copyright © 2022 MaxRivera. All rights reserved.
//

class Game {
    var nombre : String
    var publisher : String
    var price : String
    var image : String
    var plataform : String
    var reviews : String
    var dateOfPublish : String
    var size : String
    var description : String
    //var etiquetas : [Etiqueta]
    
    init(nombre : String, publisher : String, price : String, image : String, plataform : String, reviews : String, dateOfPublish : String, size : String, description : String) {
        self.nombre = nombre
        self.publisher = publisher
        self.price = price
        self.image = image
        self.plataform = plataform
        self.reviews = reviews
        self.dateOfPublish = dateOfPublish
        self.size = size
        self.description = description
        //self.etiquetas = etiquetas

    }
}
