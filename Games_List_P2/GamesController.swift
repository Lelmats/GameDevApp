//
//  ViewController.swift
//  Games_List_P2
//
//  Created by Alumno on 9/29/22.
//  Copyright © 2022 MaxRivera. All rights reserved.
//

import UIKit

class GamesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var Games : [Game] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Games.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaGame") as? CeldaGameController
        celda?.lblNombre.text = Games[indexPath.row].nombre
        celda?.lblPublisher.text = Games[indexPath.row].publisher
        celda?.lblPrice.text = Games[indexPath.row].price
        //celda?.lblImage.image = UIImage[named: Games[indexPath.row]].image
        return celda!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Games.append(Game(nombre: "Portal", publisher: "Valve", price: "13.99", image: "lel", plataform: "Steam", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "Good"))
    }


}

