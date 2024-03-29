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
        
        let tentacool = Pokemon(name: "tentacool", pokedexID: "072")
        let tentacruel = Pokemon(name: "tentacruel", pokedexID: "073")
        addToPokedex(poke: tentacool)
        addToPokedex(poke: tentacruel)
        
        let geodude = Pokemon(name: "geodude", pokedexID: "074")
        let graveler = Pokemon(name: "graveler", pokedexID: "075")
        let golem = Pokemon(name: "golem", pokedexID: "076")
        addToPokedex(poke: geodude)
        addToPokedex(poke: graveler)
        addToPokedex(poke: golem)
        
        let ponyta = Pokemon(name: "ponyta", pokedexID: "077")
        let rapidash = Pokemon(name: "rapidash", pokedexID: "078")
        addToPokedex(poke: ponyta)
        addToPokedex(poke: rapidash)
        
        let slowpoke = Pokemon(name: "slowpoke", pokedexID: "079")
        let slowbro = Pokemon(name: "slowbro", pokedexID: "080")
        addToPokedex(poke: slowpoke)
        addToPokedex(poke: slowbro)
        
        let magnemite = Pokemon(name: "magnemite", pokedexID: "081")
        let magneton = Pokemon(name: "magneton", pokedexID: "082")
        addToPokedex(poke: magnemite)
        addToPokedex(poke: magneton)
        
        let farfetchd = Pokemon(name: "farfetch'd", pokedexID: "083")//may cause error
        addToPokedex(poke: farfetchd)
        
        let doduo = Pokemon(name: "doduo", pokedexID: "084")
        let dodrio = Pokemon(name: "dodrio", pokedexID: "085")
        addToPokedex(poke: doduo)
        addToPokedex(poke: dodrio)
        
        let seel = Pokemon(name: "seel", pokedexID: "086")
        let dewgong = Pokemon(name: "dewgong", pokedexID: "087")
        addToPokedex(poke: seel)
        addToPokedex(poke: dewgong)
        
        let grimer = Pokemon(name: "grimer", pokedexID: "088")
        let muk = Pokemon(name: "muk", pokedexID: "089")
        addToPokedex(poke: grimer)
        addToPokedex(poke: muk)
        
        let shellder = Pokemon(name: "shellder", pokedexID: "090")
        let cloyster = Pokemon(name: "cloyster", pokedexID: "091")
        addToPokedex(poke: shellder)
        addToPokedex(poke: cloyster)
        
        let gastly = Pokemon(name: "gastly", pokedexID: "092")
        let haunter = Pokemon(name: "haunter", pokedexID: "093")
        let gengar = Pokemon(name: "gengar", pokedexID: "094")
        addToPokedex(poke: gastly)
        addToPokedex(poke: haunter)
        addToPokedex(poke: gengar)
        
        let onix = Pokemon(name: "onix", pokedexID: "095")
        addToPokedex(poke: onix)
        
        let drowzee = Pokemon(name: "drowzee", pokedexID: "096")
        let hypno = Pokemon(name: "hypno", pokedexID: "097")
        addToPokedex(poke: drowzee)
        addToPokedex(poke: hypno)
        
        let krabby = Pokemon(name: "krabby", pokedexID: "098")
        let kingler = Pokemon(name: "kingler", pokedexID: "099")
        addToPokedex(poke: krabby)
        addToPokedex(poke: kingler)
        
        let voltorb = Pokemon(name: "voltorb", pokedexID: "100")
        let electrode = Pokemon(name: "electrode", pokedexID: "101")
        addToPokedex(poke: voltorb)
        addToPokedex(poke: electrode)
        
        let exeggcute = Pokemon(name: "exeggcute", pokedexID: "102")
        let exeggutor = Pokemon(name: "exeggutor", pokedexID: "103")
        addToPokedex(poke: exeggcute)
        addToPokedex(poke: exeggutor)
        
        let cubone = Pokemon(name: "cubone", pokedexID: "104")
        let marowak = Pokemon(name: "marowak", pokedexID: "105")
        addToPokedex(poke: cubone)
        addToPokedex(poke: marowak)
        
        let hitmonlee = Pokemon(name: "hitmonlee", pokedexID: "106")
        addToPokedex(poke: hitmonlee)
        
        let hitmonchan = Pokemon(name: "hitmonchan", pokedexID: "107")
        addToPokedex(poke: hitmonchan)
        
        let lickitung = Pokemon(name: "lickitung", pokedexID: "108")
        addToPokedex(poke: lickitung)
        
        let koffing = Pokemon(name: "koffing", pokedexID: "109")
        let weezing = Pokemon(name: "weezing", pokedexID: "110")
        addToPokedex(poke: koffing)
        addToPokedex(poke: weezing)
        
        let rhyhorn = Pokemon(name: "rhyhorn", pokedexID: "111")
        let rhydon = Pokemon(name: "rhydon", pokedexID: "112")
        addToPokedex(poke: rhyhorn)
        addToPokedex(poke: rhydon)
        
        let chansey = Pokemon(name: "chansey", pokedexID: "113")
        addToPokedex(poke: chansey)
        
        let tangela = Pokemon(name: "tangela", pokedexID: "114")
        addToPokedex(poke: tangela)
        
        let kangaskhan = Pokemon(name: "kangaskhan", pokedexID: "115")
        addToPokedex(poke: kangaskhan)
        
        let horsea = Pokemon(name: "horsea", pokedexID: "116")
        let seadra = Pokemon(name: "seadra", pokedexID: "117")
        addToPokedex(poke: horsea)
        addToPokedex(poke: seadra)
        
        let goldeen = Pokemon(name: "goldeen", pokedexID: "118")
        let seaking = Pokemon(name: "seaking", pokedexID: "119")
        addToPokedex(poke: goldeen)
        addToPokedex(poke: seaking)
        
        let staryu = Pokemon(name: "staryu", pokedexID: "120")
        let starmie = Pokemon(name: "starmie", pokedexID: "121")
        addToPokedex(poke: staryu)
        addToPokedex(poke: starmie)
        
        let mrmime = Pokemon(name: "Mr. Mime", pokedexID: "122")
        addToPokedex(poke: mrmime)
        
        let scyther = Pokemon(name: "scyther", pokedexID: "123")
        addToPokedex(poke: scyther)
        
        let jynx = Pokemon(name: "jynx", pokedexID: "124")
        addToPokedex(poke: jynx)
        
        let electabuzz = Pokemon(name: "electabuzz", pokedexID: "125")
        addToPokedex(poke: electabuzz)
        
        let magmar = Pokemon(name: "magmar", pokedexID: "126")
        addToPokedex(poke: magmar)
        
        let pinsir = Pokemon(name: "pinsir", pokedexID: "127")
        addToPokedex(poke: pinsir)
        
        let tauros = Pokemon(name: "tauros", pokedexID: "128")
        addToPokedex(poke: tauros)
        
        let magikarp = Pokemon(name: "magikarp", pokedexID: "129")
        let gyarados = Pokemon(name: "gyarados", pokedexID: "130")
        addToPokedex(poke: magikarp)
        addToPokedex(poke: gyarados)
        
        let lapras = Pokemon(name: "lapras", pokedexID: "131")
        addToPokedex(poke: lapras)
        
        let ditto = Pokemon(name: "ditto", pokedexID: "132")
        addToPokedex(poke: ditto)
        
        let eevee = Pokemon(name: "eevee", pokedexID: "133")
        addToPokedex(poke: eevee)
        let vaporeon = Pokemon(name: "vaporeon", pokedexID: "134")
        addToPokedex(poke: vaporeon)
        let jolteon = Pokemon(name: "jolteon", pokedexID: "135")
        addToPokedex(poke: jolteon)
        let flareon = Pokemon(name: "flareon", pokedexID: "136")
        addToPokedex(poke: flareon)
        
        let porygon = Pokemon(name: "porygon", pokedexID: "137")
        addToPokedex(poke: porygon)
        
        let omanyte = Pokemon(name: "omanyte", pokedexID: "138")
        addToPokedex(poke: omanyte)
        let omastar = Pokemon(name: "omastar", pokedexID: "139")
        addToPokedex(poke: omastar)
        
        let kabuto = Pokemon(name: "kabuto", pokedexID: "140")
        addToPokedex(poke: kabuto)
        let kabutops = Pokemon(name: "kabutops", pokedexID: "141")
        addToPokedex(poke: kabutops)
        
        let aerodactyl = Pokemon(name: "aerodactyl", pokedexID: "142")
        addToPokedex(poke: aerodactyl)
        
        let snorlax = Pokemon(name: "snorlax", pokedexID: "143")
        addToPokedex(poke: snorlax)
        
        let articuno = Pokemon(name: "articuno", pokedexID: "144")
        addToPokedex(poke: articuno)
        
        let zapdos = Pokemon(name: "zapdos", pokedexID: "145")
        addToPokedex(poke: zapdos)
        
        let moltres = Pokemon(name: "moltres", pokedexID: "146")
        addToPokedex(poke: moltres)
        
        let dratini = Pokemon(name: "dratini", pokedexID: "147")
        addToPokedex(poke: dratini)
        let dragonair = Pokemon(name: "dragonair", pokedexID: "148")
        addToPokedex(poke: dragonair)
        let dragonite = Pokemon(name: "dragonite", pokedexID: "149")
        addToPokedex(poke: dragonite)
        
        let mewtwo = Pokemon(name: "mewtwo", pokedexID: "150")
        addToPokedex(poke: mewtwo)
        
        let mew = Pokemon(name: "mew", pokedexID: "151")
        addToPokedex(poke: mew)
        
        
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
