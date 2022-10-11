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
    var Tags_3 : [Tag] = []
    var Tags_4 : [Tag] = []
    var Tags_5 : [Tag] = []
    var Tags_6 : [Tag] = []
    var Tags_7 : [Tag] = []
    var Tags_8 : [Tag] = []
    var Tags_9 : [Tag] = []
    var Tags_10 : [Tag] = []
    var Tags_11 : [Tag] = []
    var Tags_12 : [Tag] = []
    var Tags_13 : [Tag] = []
    var Tags_14 : [Tag] = []
    var Tags_15 : [Tag] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
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
    
        celda?.imgFrontImg.layer.cornerRadius = 5
        celda?.imgFrontImg.clipsToBounds = true
        celda?.imgFrontImg.layer.borderWidth = 0
        celda?.imgFrontImg.layer.borderColor = UIColor.clear.cgColor
        
        return celda!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tags_1.append(Tag(nombre : "Puzzle", etiqueta2: "Misterio"))
        Tags_1.append(Tag(nombre : "Fun", etiqueta2: "Historia"))
        Tags_1.append(Tag(nombre : "God", etiqueta2: "BigBrain"))

        Tags_2.append(Tag(nombre : "Construction", etiqueta2: "12"))
        Tags_2.append(Tag(nombre : "Kids", etiqueta2: "12"))
        Tags_2.append(Tag(nombre : "Creative", etiqueta2: "Good"))
        
        Tags_3.append(Tag(nombre : "God", etiqueta2: "Demon"))
        Tags_3.append(Tag(nombre : "Killer", etiqueta2: "Monster"))
        Tags_3.append(Tag(nombre : "Fun", etiqueta2: ""))
        
        Tags_4.append(Tag(nombre : "Creative", etiqueta2: "God"))
        Tags_4.append(Tag(nombre : "Flying", etiqueta2: "Infinite"))
        Tags_4.append(Tag(nombre : "Neverend", etiqueta2: "Imposible"))
        
        Tags_5.append(Tag(nombre : "PlayerVS", etiqueta2: "Bots"))
        Tags_5.append(Tag(nombre : "Fun", etiqueta2: "Gods"))
        Tags_5.append(Tag(nombre : "Animation", etiqueta2: "Good"))
        
        Tags_6.append(Tag(nombre : "Creative", etiqueta2: "Dumb"))
        Tags_6.append(Tag(nombre : "WFF", etiqueta2: "Awesome"))
        Tags_6.append(Tag(nombre : "Infinity", etiqueta2: "Friends"))
        
        Tags_7.append(Tag(nombre : "Competitive", etiqueta2: "PlayerVS"))
        Tags_7.append(Tag(nombre : "Guns", etiqueta2: "Fire"))
        Tags_7.append(Tag(nombre : "War", etiqueta2: "Bomb"))
        
        Tags_8.append(Tag(nombre : "Survive", etiqueta2: "PlayerVS"))
        Tags_8.append(Tag(nombre : "MidAge", etiqueta2: "Start"))
        Tags_8.append(Tag(nombre : "Progression", etiqueta2: "Good"))
        
        Tags_9.append(Tag(nombre : "PlayerVS", etiqueta2: "Guns"))
        Tags_9.append(Tag(nombre : "Tech", etiqueta2: "Noice"))
        Tags_9.append(Tag(nombre : "Map", etiqueta2: "Nice"))
        
        Tags_10.append(Tag(nombre : "Fun", etiqueta2: "Friends"))
        Tags_10.append(Tag(nombre : "Dumb", etiqueta2: "Clumsy"))
        Tags_10.append(Tag(nombre : "Run", etiqueta2: ""))
        
        Tags_11.append(Tag(nombre : "Wasteland", etiqueta2: "Start"))
        Tags_11.append(Tag(nombre : "God", etiqueta2: "Killers"))
        Tags_11.append(Tag(nombre : "Help", etiqueta2: "Skulls"))
        
        Tags_12.append(Tag(nombre : "Wasteland2", etiqueta2: "Skulls"))
        Tags_12.append(Tag(nombre : "MoreSkulls", etiqueta2: "Guns"))
        Tags_12.append(Tag(nombre : "State", etiqueta2: "Kill"))
        
        Tags_13.append(Tag(nombre : "Wasteland3", etiqueta2: "MoreSkulls"))
        Tags_13.append(Tag(nombre : "God", etiqueta2: "Axe`s"))
        Tags_13.append(Tag(nombre : "Run", etiqueta2: "WastelandCars"))
        
        Tags_14.append(Tag(nombre : "GodGame", etiqueta2: "MiddleAge"))
        Tags_14.append(Tag(nombre : "Swords", etiqueta2: "People"))
        Tags_14.append(Tag(nombre : "Town", etiqueta2: "GiantMap"))
        
        Tags_15.append(Tag(nombre : "Fun", etiqueta2: "Friends"))
        Tags_15.append(Tag(nombre : "Dumb", etiqueta2: "COLORS"))
        Tags_15.append(Tag(nombre : "Impostor", etiqueta2: "Crewmate"))
    
        
    
        
        // Do any additional setup after loading the view.
        
        Games.append(Game(nombre: "Portal", publisher: "Valve", price: "13.99", frontImg: "portadaPortal", plataform: "Steam", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB",
            description: "Portal consists primarily of a series of puzzles that must be solved by teleporting the player's character and simple objects using the Aperture Science Handheld Portal Device, often referred to as the portal gun.",
            tags: Tags_1))
        Games.append(Game(nombre: "Minecraft", publisher: "Mojang", price: "35.99", frontImg: "portadaMinecraft", plataform: "All plataform", reviews: "Positive", dateOfPublish: "01/11/2011", size: "6GB", description: "Minecraft is a video game in which players create and break apart various kinds of blocks in three-dimensional worlds.", tags: Tags_2))
        
        Games.append(Game(nombre: "Doom Ethern", publisher: "Bethesda", price: "59.99", frontImg: "doom_portada", plataform: "Steam,Switch,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "Become the Slayer in an epic single-player campaign to conquer demons across dimensions and stop the final destruction of humanity.", tags: Tags_3))
        
        Games.append(Game(nombre: "Terraria", publisher: "Re-Logic", price: "14.99", frontImg: "terraria_portada", plataform: "Steam,Switch,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "Terraria is a 2D sandbox game with gameplay that revolves around exploration, building, crafting, combat, survival, and mining, playable in both single-player and multiplayer modes.", tags: Tags_4))
        
        Games.append(Game(nombre: "Multiversus", publisher: "Warner-Bros", price: "Free", frontImg: "multi_portada", plataform: "Steam,Switch,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "An all-new free-to-play, platform fighter videogame with an ever-expanding cast of iconic characters and legendary universes.", tags: Tags_5))
        
        Games.append(Game(nombre: "Garry`s Mod", publisher: "Valve", price: "10.99", frontImg: "gmod_portada", plataform: "Steam", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "Garry's Mod is a physics-based sandbox game that, in its base game mode, has no set objectives. The player is able to spawn non-player characters, ragdolls, and props, and interact with them by various means. Using the Gun, ragdolls and props can be picked up, rotated, and frozen in place.", tags: Tags_6))
        
        Games.append(Game(nombre: "CS GO", publisher: "Valve", price: "Free", frontImg: "csgo_portada", plataform: "Steam", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "The game pits two teams, Terrorists and Counter-Terrorists, against each other in different objective-based game modes. ", tags: Tags_7))
        
        Games.append(Game(nombre: "Rust", publisher: "Facepunch", price: "15.99", frontImg: "rust_portada", plataform: "Steam,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "Rust was initially created as a clone of DayZ, a popular mod for ARMA 2, with crafting elements akin to those in Minecraft. The objective of Rust is to survive in the wilderness using gathered or stolen materials.", tags: Tags_8))
        
        Games.append(Game(nombre: "Apex Legends", publisher: "Electronic Arts", price: "Free", frontImg: "apex_portada", plataform: "Steam,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "Apex Legends is an online multiplayer battle royale game featuring squads of three players using pre-made characters with distinctive abilities, called Legends.", tags: Tags_9))
        
        Games.append(Game(nombre: "Fall Guys", publisher: "Mediatonic", price: "Free", frontImg: "fall_portada", plataform: "Steam,Switch,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "The game involves up to 60 players who control jellybean-like creatures and compete against each other in a series of randomly selected mini-games, such as obstacle courses or tag.", tags: Tags_10))
        
        Games.append(Game(nombre: "Borderlands", publisher: "Gearbox Software", price: "23.99", frontImg: "border1_portada", plataform: "Steam,Switch,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "The game's story focuses on a group of four Vault Hunters, who travel to the distant planet of Pandora to search for the Vault, which is rumored to contain advanced alien technology and other priceless riches.", tags: Tags_11))
        
        Games.append(Game(nombre: "Borderlands 2", publisher: "Gearbox Software", price: "43.99", frontImg: "border2_portada", plataform: "Steam,Switch,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "Choose one of the four new character classes to be taken through a carefully crafted and connected story to all new and surprising environments across the living planet of Pandora.", tags: Tags_12))
        
        Games.append(Game(nombre: "Borderlands 3", publisher: "Gearbox Software", price: "43.99", frontImg: "border3_portada", plataform: "Steam,Switch,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "The plot is centered on four new Vault Hunters recruited by the Crimson Raiders of Pandora to stop twins Troy and Tyreen Calypso and their insane cult followers from harnessing the power of the alien Vaults spread across the galaxy.", tags: Tags_13))
        
        Games.append(Game(nombre: "Skyrim V", publisher: "Bethesda", price: "30.99", frontImg: "skyrim_portada", plataform: "Steam,Switch,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "An action role-playing game, playable from either a first- or third-person perspective. The player may freely roam over the land of Skyrim, an open world environment consisting of wilderness expanses, dungeons, caves, cities, towns, fortresses, and villages.", tags: Tags_14))
        
        Games.append(Game(nombre: "Among Us", publisher: "Innersloth", price: "12.99", frontImg: "amongus_portada", plataform: "Steam,Switch,Xbox", reviews: "Positive", dateOfPublish: "08/01/2008", size: "6GB", description: "A social deception game which can be downloaded for free on Android and iOs, or to purchase for use on a PC. It can be played with a group of between 4 and 10 players either online by joining a game with strangers.", tags: Tags_15))
    

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destino = segue.destination as! DetallesGameController
        destino.game = Games[tvGames.indexPathForSelectedRow!.row]

    }

}

