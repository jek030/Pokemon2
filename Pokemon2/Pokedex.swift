//
//  Pokedex.swift
//  Pokemon2
//
//  Created by James Kelly on 10/12/19.
//  Copyright © 2019 James Kelly. All rights reserved.
//

import Foundation

class Pokedex {
    
    var pokedex = [Pokemon]()
    var starterPokemon = [Pokemon]()
    
    init() {
        let bulbasaur = Pokemon(name: "bulbasaur", pokedexID: "001")
        let ivysaur = Pokemon(name: "ivysaur", pokedexID: "002")
        let venusaur = Pokemon(name: "venusaur", pokedexID: "003")
        addToPokedex(poke: bulbasaur)
        addToPokedex(poke: ivysaur)
        addToPokedex(poke: venusaur)
        
        let charmander = Pokemon(name: "charmander", pokedexID: "004")
        let charmeleon = Pokemon(name: "charmeleon", pokedexID: "005")
        let charizard = Pokemon(name: "charizard", pokedexID: "006")
        addToPokedex(poke: charmander)
        addToPokedex(poke: charmeleon)
        addToPokedex(poke: charizard)
        
        let squirtle = Pokemon(name: "squirtle", pokedexID: "007")
        let wartortle = Pokemon(name: "wartortle", pokedexID: "008")
        let blastoise = Pokemon(name: "blastoise", pokedexID: "009")
        addToPokedex(poke: squirtle)
        addToPokedex(poke: wartortle)
        addToPokedex(poke: blastoise)
        
        let caterpie = Pokemon(name: "caterpie", pokedexID: "010")
        let metapod = Pokemon(name: "metapod", pokedexID: "011")
        let butterfree = Pokemon(name: "butterfree", pokedexID: "012")
        addToPokedex(poke: caterpie)
        addToPokedex(poke: metapod)
        addToPokedex(poke: butterfree)
        
        let weedle = Pokemon(name: "weedle", pokedexID: "013")
        let kakuna = Pokemon(name: "kakuna", pokedexID: "014")
        let beedrill = Pokemon(name: "beedrill", pokedexID: "015")
        addToPokedex(poke: weedle)
        addToPokedex(poke: kakuna)
        addToPokedex(poke: beedrill)
        
        let pidgey = Pokemon(name: "pidgey", pokedexID: "016")
        let pidgeotto = Pokemon(name: "pidgeotto", pokedexID: "017")
        let pidgeot = Pokemon(name: "pidgeot", pokedexID: "018")
        addToPokedex(poke: pidgey)
        addToPokedex(poke: pidgeotto)
        addToPokedex(poke: pidgeot)
        
        let rattata = Pokemon(name: "rattata", pokedexID: "019")
        let raticate = Pokemon(name: "raticate", pokedexID: "020")
        addToPokedex(poke: rattata)
        addToPokedex(poke: raticate)
        
        let spearow = Pokemon(name: "spearow", pokedexID: "021")
        let fearow = Pokemon(name: "fearow", pokedexID: "022")
        addToPokedex(poke: spearow)
        addToPokedex(poke: fearow)
        
        let ekans = Pokemon(name: "ekans", pokedexID: "023")
        let arbok = Pokemon(name: "arbok", pokedexID: "024")
        addToPokedex(poke: ekans)
        addToPokedex(poke: arbok)
        
        let pikachu = Pokemon(name: "pikachu", pokedexID: "025")
        let raichu = Pokemon(name: "raichu", pokedexID: "026")
        addToPokedex(poke: pikachu)
        addToPokedex(poke: raichu)
        
        let sandshrew = Pokemon(name: "sandshrew", pokedexID: "027")
        let sandslash = Pokemon(name: "sandslash", pokedexID: "028")
        addToPokedex(poke: sandshrew)
        addToPokedex(poke: sandslash)
        
        let nidoran_f = Pokemon(name: "nidoran_f", pokedexID: "029")
        let nidorina = Pokemon(name: "nidorina", pokedexID: "030")
        let nidoqueen = Pokemon(name: "nidoqueen", pokedexID: "031")
        addToPokedex(poke: nidoran_f)
        addToPokedex(poke: nidorina)
        addToPokedex(poke: nidoqueen)
        
        let nidoran_m = Pokemon(name: "nidoran_m", pokedexID: "032")
        let nidorino = Pokemon(name: "nidorino", pokedexID: "033")
        let nidoking = Pokemon(name: "nidoking", pokedexID: "034")
        addToPokedex(poke: nidoran_m)
        addToPokedex(poke: nidorino)
        addToPokedex(poke: nidoking)
        
        let clefairy = Pokemon(name: "clefairy", pokedexID: "035")
        let clefable = Pokemon(name: "clefable", pokedexID: "036")
        addToPokedex(poke: clefairy)
        addToPokedex(poke: clefable)
        
        let vulpix = Pokemon(name: "vulpix", pokedexID: "037")
        let ninetales = Pokemon(name: "ninetales", pokedexID: "038")
        addToPokedex(poke: vulpix)
        addToPokedex(poke: ninetales)
        
        let jigglypuff = Pokemon(name: "jigglypuff", pokedexID: "039")
        let wigglytuff = Pokemon(name: "wigglytuff", pokedexID: "040")
        addToPokedex(poke: jigglypuff)
        addToPokedex(poke: wigglytuff)
        
        let zubat = Pokemon(name: "zubat", pokedexID: "041")
        let golbat = Pokemon(name: "golbat", pokedexID: "042")
        addToPokedex(poke: zubat)
        addToPokedex(poke: golbat)
        
        let oddish = Pokemon(name: "oddish", pokedexID: "043")
        let gloom = Pokemon(name: "gloom", pokedexID: "044")
        let vileplume = Pokemon(name: "vileplume", pokedexID: "045")
        addToPokedex(poke: oddish)
        addToPokedex(poke: gloom)
        addToPokedex(poke: vileplume)
        
        let paras = Pokemon(name: "paras", pokedexID: "046")
        let parasect = Pokemon(name: "parasect", pokedexID: "047")
        addToPokedex(poke: paras)
        addToPokedex(poke: parasect)
        
        let venonat = Pokemon(name: "venonat", pokedexID: "048")
        let venomoth = Pokemon(name: "venomoth", pokedexID: "049")
        addToPokedex(poke: venonat)
        addToPokedex(poke: venomoth)
        
        let diglett = Pokemon(name: "diglett", pokedexID: "050")
        let dugtrio = Pokemon(name: "dugtrio", pokedexID: "051")
        addToPokedex(poke: diglett)
        addToPokedex(poke: dugtrio)
        
        let meowth = Pokemon(name: "meowth", pokedexID: "052")
        let persian = Pokemon(name: "persian", pokedexID: "053")
        addToPokedex(poke: meowth)
        addToPokedex(poke: persian)
        
        let psyduck = Pokemon(name: "psyduck", pokedexID: "054")
        let golduck = Pokemon(name: "golduck", pokedexID: "055")
        addToPokedex(poke: psyduck)
        addToPokedex(poke: golduck)
        
        let mankey = Pokemon(name: "mankey", pokedexID: "056")
        let primeape = Pokemon(name: "primeape", pokedexID: "057")
        addToPokedex(poke: mankey)
        addToPokedex(poke: primeape)
        
        let growlithe = Pokemon(name: "growlithe", pokedexID: "058")
        let arcanine = Pokemon(name: "arcanine", pokedexID: "059")
        addToPokedex(poke: growlithe)
        addToPokedex(poke: arcanine)
        
        let poliwag = Pokemon(name: "poliwag", pokedexID: "060")
        let poliwhirl = Pokemon(name: "poliwhirl", pokedexID: "061")
        let poliwrath = Pokemon(name: "poliwrath", pokedexID: "062")
        addToPokedex(poke: poliwag)
        addToPokedex(poke: poliwhirl)
        addToPokedex(poke: poliwrath)
        
        let abra = Pokemon(name: "abra", pokedexID: "063")
        let kadabra = Pokemon(name: "kadabra", pokedexID: "064")
        let alakazam = Pokemon(name: "alakazam", pokedexID: "065")
        addToPokedex(poke: abra)
        addToPokedex(poke: kadabra)
        addToPokedex(poke: alakazam)
        
        let machop = Pokemon(name: "machop", pokedexID: "066")
        let machoke = Pokemon(name: "machoke", pokedexID: "067")
        let machamp = Pokemon(name: "machamp", pokedexID: "068")
        addToPokedex(poke: machop)
        addToPokedex(poke: machoke)
        addToPokedex(poke: machamp)
        
        let bellsprout = Pokemon(name: "bellsprout", pokedexID: "069")
        let weepinbell = Pokemon(name: "weepinbell", pokedexID: "070")
        let victreebel = Pokemon(name: "victreebel", pokedexID: "071")
        addToPokedex(poke: bellsprout)
        addToPokedex(poke: weepinbell)
        addToPokedex(poke: victreebel)
        
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
    
    func getPokedex() -> [Pokemon]{
        return pokedex
    }
    
    
}
