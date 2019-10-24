//
//  ViewController.swift
//  Pokemon
//
//  Created by James Kelly on 10/6/19.
//  Copyright © 2019 James Kelly. All rights reserved.
//
//gen 4 images



//got to add collection view and figure out how to access the button and label in the collection view


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
    @IBOutlet weak var topRightPokemonImageButton: UIButton!
    @IBOutlet weak var middleLeftPokemonImageButton: UIButton!
    @IBOutlet weak var middleRightPokemonImageButton: UIButton!
    @IBOutlet weak var bottomLeftPokemonImageButton: UIButton!
    @IBOutlet weak var bottomRightPokemonImageButton: UIButton!
    
    
    var numberOfSteps:Int = 0
    var distance:Double = 0
    var pedometer = CMPedometer()
    
    let r1 = Int.random(in: 0 ..< 152)//not including 152
    let r2 = Int.random(in: 0 ..< 152)
    let r3 = Int.random(in: 0 ..< 152)
    let r4 = Int.random(in: 0 ..< 152)
    let r5 = Int.random(in: 0 ..< 152)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startUpdating()
        /*
        topRightPokemonImageButton.setImage(UIImage(named: pokedex_object.pokedex[r1].getName()), for: .normal)
        middleLeftPokemonImageButton.setImage(UIImage(named: pokedex_object.pokedex[r2].getName()), for: .normal)
        middleRightPokemonImageButton.setImage(UIImage(named: pokedex_object.pokedex[r3].getName()), for: .normal)
        bottomLeftPokemonImageButton.setImage(UIImage(named: pokedex_object.pokedex[r4].getName()), for: .normal)
        bottomRightPokemonImageButton.setImage(UIImage(named: pokedex_object.pokedex[r5].getName()), for: .normal)
        */
        
        topRightPokemonImageButton.setImage(UIImage(named: "egg"), for: .normal)
        middleLeftPokemonImageButton.setImage(UIImage(named: "egg"), for: .normal)
        middleRightPokemonImageButton.setImage(UIImage(named: "egg"), for: .normal)
        bottomLeftPokemonImageButton.setImage(UIImage(named: "egg"), for: .normal)
        bottomRightPokemonImageButton.setImage(UIImage(named: "egg"), for: .normal)
        
        displayPokemonImageButton.setImage(UIImage(named: "egg"), for: .normal)
        navigationItem.title = "Pokemon"
    }
    
    func trackEggs() {
        let starter = pokedex_object.starterPokemon.randomElement()
        if (numberOfSteps == 50){
            self.nameLabel.text = starter!.getName()
            self.displayPokemonImageButton.setImage(UIImage(named: "\(starter!.getName())"), for: .normal)

        }
        
        
        
    }
    
    
    @IBAction func pokedexButtonClicked(_ sender: Any) {
        //let storyboard = UIStoryboard(name: "Main", bundle: nil);
        //if let vc = storyboard?.instantiateViewController(withIdentifier: "Pokedex") as? PokedexTableViewController {
        
        
            performSegue(withIdentifier: "SegueToPokedex", sender: self)
           // navigationController?.pushViewController(vc, animated: true)
       // }
       
    }
    
    
    
    @IBAction func pokemonTapped(_ sender: Any) {
        /*let starter = pokedex_object.starterPokemon.randomElement()
        
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
 */
    }
    
    private func eggHatched(name: String){
        let ac = UIAlertController(title: "Your egg has hatched into...", message: "\(name)!", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    private func newPokemon(name: String){
        let ac = UIAlertController(title: "You found a...", message: "\(name)!", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    private func miles(meters:Double)-> Double{
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
    
}

