//
//  ViewController.swift
//  Pokemon
//
//  Created by James Kelly on 10/6/19.
//  Copyright © 2019 James Kelly. All rights reserved.
//
//gen 4 images


import UIKit

class ViewController: UIViewController {
    var tapCount = 0
    var PIKACHU = 24 //25-1
    

    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var displayPokemonImageButton: UIButton!
    
    var pokedex = [Pokemon]()
    var starterPokemon = [Pokemon]()
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPokemon()
        // Do any additional setup after loading the view.
        
        //displayPokemonImageButton.setImage(UIImage(named: "egg"), for: .normal)
        print("Name: " + pokedex[0].getName())
        print("ID: " + String(pokedex[0].pokedexID))
    }
    
    
    @IBAction func pokemonTapped(_ sender: Any) {
        let starter = starterPokemon.randomElement()
        
        tapCount = tapCount + 1
        
        if (tapCount == 5){// egg hatched
            eggHatched(name: pokedex[PIKACHU].getName() )
            self.nameLabel.text = pokedex[PIKACHU].getName()
            self.displayPokemonImageButton.setImage(UIImage(named: "\(pokedex[PIKACHU].getName())"), for: .normal)
            // create random for 3 starters
        }
        
        if (tapCount == 10){
            newPokemon(name: starter!.getName() )
            self.nameLabel.text = starter!.getName()
            self.displayPokemonImageButton.setImage(UIImage(named: "\(starter!.getName())"), for: .normal)
            // create random for 3 starters
        }
        print(tapCount)
    }
    
    func eggHatched(name: String){
        let ac = UIAlertController(title: "Your egg has hatched into...", message: "\(name)!", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func newPokemon(name: String){
        let ac = UIAlertController(title: "You found a...", message: "\(name)!", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    
    func createPokemon() {
        let bulbasaur = Pokemon(name: "bulbasaur", pokedexID: 001)
        let ivysaur = Pokemon(name: "ivysaur", pokedexID: 002)
        let venusaur = Pokemon(name: "venusaur", pokedexID: 003)
        addToPokedex(poke: bulbasaur)
        addToPokedex(poke: ivysaur)
        addToPokedex(poke: venusaur)
        
        let charmander = Pokemon(name: "charmander", pokedexID: 004)
        let charmeleon = Pokemon(name: "charmeleon", pokedexID: 005)
        let charizard = Pokemon(name: "charizard", pokedexID: 006)
        addToPokedex(poke: charmander)
        addToPokedex(poke: charmeleon)
        addToPokedex(poke: charizard)
        
        let squirtle = Pokemon(name: "squirtle", pokedexID: 007)
        let wartortle = Pokemon(name: "wartortle", pokedexID: 008)
        let blastoise = Pokemon(name: "blastoise", pokedexID: 009)
        addToPokedex(poke: squirtle)
        addToPokedex(poke: wartortle)
        addToPokedex(poke: blastoise)
        
        let caterpie = Pokemon(name: "caterpie", pokedexID: 010)
        let metapod = Pokemon(name: "metapod", pokedexID: 011)
        let butterfree = Pokemon(name: "butterfree", pokedexID: 012)
        addToPokedex(poke: caterpie)
        addToPokedex(poke: metapod)
        addToPokedex(poke: butterfree)
        
        let weedle = Pokemon(name: "weedle", pokedexID: 013)
        let kakuna = Pokemon(name: "kakuna", pokedexID: 014)
        let beedrill = Pokemon(name: "beedrill", pokedexID: 015)
        addToPokedex(poke: weedle)
        addToPokedex(poke: kakuna)
        addToPokedex(poke: beedrill)
        
        let pidgey = Pokemon(name: "pidgey", pokedexID: 016)
        let pidgeotto = Pokemon(name: "pidgeotto", pokedexID: 017)
        let pidgeot = Pokemon(name: "pidgeot", pokedexID: 018)
        addToPokedex(poke: pidgey)
        addToPokedex(poke: pidgeotto)
        addToPokedex(poke: pidgeot)
        
        let rattata = Pokemon(name: "rattata", pokedexID: 019)
        let raticate = Pokemon(name: "raticate", pokedexID: 020)
        addToPokedex(poke: rattata)
        addToPokedex(poke: raticate)
        
        let spearow = Pokemon(name: "spearow", pokedexID: 021)
        let fearow = Pokemon(name: "fearow", pokedexID: 022)
        addToPokedex(poke: spearow)
        addToPokedex(poke: fearow)
        
        let ekans = Pokemon(name: "ekans", pokedexID: 023)
        let arbok = Pokemon(name: "arbok", pokedexID: 024)
        addToPokedex(poke: ekans)
        addToPokedex(poke: arbok)
        
        let pikachu = Pokemon(name: "pikachu", pokedexID: 025)
        addToPokedex(poke: pikachu)
        
        
        addStarters(grass: bulbasaur, water: squirtle, fire: charmander)
    }
    
    func addToPokedex(poke: Pokemon ){
        pokedex.append(poke)
    }
    
    func addStarters(grass: Pokemon, water: Pokemon, fire: Pokemon) {
        //starter pokemon, will be given a random choice of the three
        starterPokemon.append(grass)
        starterPokemon.append(water)
        starterPokemon.append(fire)
    }
    
        
}

