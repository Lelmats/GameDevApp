//
//  ViewController.swift
//  Games_List_P2
//
//  Created by Alumno on 9/29/22.
//  Copyright © 2022 MaxRivera. All rights reserved.
//

import UIKit

class GamesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvGames: UITableView!
    
    var Games : [Game] = []
    var Tags_1 : [Tag] = []
    var Tags_2 : [Tag] = []
    
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
        celda?.imgFrontImg.image = UIImage(named: Games[indexPath.row].frontImg)
        return celda!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Tags_1.append(Tag(nombre : "Puzzle", codigo: "12"))
        Tags_1.append(Tag(nombre : "Fun", codigo: "12"))
        
        Tags_2.append(Tag(nombre : "Construction", codigo: "12"))
        Tags_2.append(Tag(nombre : "Kids", codigo: "12"))
        // Do any additional setup after loading the view.
        
        Games.append(Game(nombre: "Portal", publisher: "Valve", price: "13.99", frontImg: "portadaPortal", plataform: "Steam", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "Good", tags: Tags_1))
        Games.append(Game(nombre: "Minecraft", publisher: "Mojang", price: "13.99", frontImg: "portadaMinecraft", plataform: "Mojang.net", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "Good", tags: Tags_2))
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destino = segue.destination as! DetallesGameController
        destino.game = Games[tvGames.indexPathForSelectedRow!.row]

    }

}

