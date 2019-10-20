//
//  ViewController.swift
//  Pokemon
//
//  Created by James Kelly on 10/6/19.
//  Copyright © 2019 James Kelly. All rights reserved.
//
//gen 4 images


import UIKit
import CoreMotion

class ViewController: UIViewController {
    var tapCount = 0
    var PIKACHU = 24 //25-1
    var pokedex_object = Pokedex()

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stepsLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!

    @IBOutlet weak var pokedexButton: UIButton!
    @IBOutlet weak var displayPokemonImageButton: UIButton!
    
    var numberOfSteps:Int = 0
    var distance:Double = 0
    var pedometer = CMPedometer()
    
    func miles(meters:Double)-> Double{
        let mile = 0.000621371192
        return meters * mile
    }
    
   
    
    private func startCountingSteps() {
        pedometer.startUpdates(from: Date()) {
            [weak self] pedometerData, error in
            guard let pedometerData = pedometerData, error == nil else { return }
            
            DispatchQueue.main.async {
                self?.stepsLabel.text = "Steps: " + pedometerData.numberOfSteps.stringValue
                self?.distanceLabel.text = "Miles: \(self!.miles(meters: pedometerData.distance!.doubleValue))" // !.stringValue //in meters
                
            }
        }
    }
    
    private func startUpdating() {
        
        if CMPedometer.isStepCountingAvailable() {
            startCountingSteps()
        }
    }
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        startUpdating()

        
        //displayPokemonImageButton.setImage(UIImage(named: "egg"), for: .normal)
        navigationItem.title = "Pokemon"
    }
    
    
    @IBAction func pokedexButtonClicked(_ sender: Any) {
        //let storyboard = UIStoryboard(name: "Main", bundle: nil);
        //if let vc = storyboard?.instantiateViewController(withIdentifier: "Pokedex") as? PokedexTableViewController {
        
        
            performSegue(withIdentifier: "SegueToPokedex", sender: self)
           // navigationController?.pushViewController(vc, animated: true)
       // }
       
    }
    
    @IBAction func pokemonTapped(_ sender: Any) {
        let starter = pokedex_object.starterPokemon.randomElement()
        
        tapCount = tapCount + 1
        
        if (tapCount == 5){// egg hatched
            eggHatched(name: pokedex_object.pokedex[PIKACHU].getName() )
            self.nameLabel.text = pokedex_object.pokedex[PIKACHU].getName()
            self.displayPokemonImageButton.setImage(UIImage(named: "\(pokedex_object.pokedex[PIKACHU].getName())"), for: .normal)
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
    
}

