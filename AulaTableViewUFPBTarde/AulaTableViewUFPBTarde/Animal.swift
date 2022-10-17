//
//  Animal.swift
//  AulaTableViewUFPBTarde
//
//  Created by student on 14/10/22.
//

import Foundation


// model

class AnimalModel {
    let nameAnimal : String
    let specieAnimal : String
    let fotoAnimal : String
    
    init( name: String, specie: String, fotoPath: String ){
        self.nameAnimal = name
        self.specieAnimal = specie
        self.fotoAnimal = fotoPath
        
    }
    
}


class AnimalDAO{
    static func getList()-> [AnimalModel] {
        return[
            AnimalModel(name: "Snoop", specie: "Cachorro", fotoPath: "cachorro"),
            AnimalModel(name: "Donald", specie: "Pato", fotoPath: "pato"),
            AnimalModel(name: "Ze Carioca", specie: "Papagaio", fotoPath: "papagaio"),
            AnimalModel(name: "Jack", specie: "Canguru", fotoPath: "canguru"),
            AnimalModel(name: "Perna Longa", specie: "Coelho", fotoPath: "coelho"),
            AnimalModel(name: "Donatelo", specie: "Tartaruga", fotoPath: "tartaruga"),
            AnimalModel(name: "Nemo", specie: "Peixe", fotoPath: "peixe"),
        ]
    }
}


//
