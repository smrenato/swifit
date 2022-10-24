//
//  CoinsAPI.swift
//  AulaUsandoAPI
//
//  Created by student on 24/10/22.
//

import Foundation


class CoinsDatails : Codable{
    let id : String?
    let rank: String?
    let symbol: String?
    let name: String?
    let supply: String?
    let maxSupply: String?
    let marketCapUsd: String?
    let volumeUsd24Hr: String?
    let priceUsd: String?
    let changePercent24Hr: String?
    let vwap24Hr: String?
    let explorer: String?

    
}


class Coins : Codable{
    var data: [CoinsDatails]?
    var timestemp: String?
    
}


class CoinsRequest{
    let urlAPI = URL(string: "https://api.coincap.io/v2/assets")
    var coins: [CoinsDatails]!
    
    func getCoins(){
        
        let task = URLSession.shared.dataTask(with: urlAPI!){
            data, response, error in
            if error == nil{
                do{
                    let array = try JSONDecoder().decode(Coins.self, from: data!)
                    self.coins = array.data
                    
                    DispatchQueue.main.async {
                        self.coins.forEach{
                            c in
                            print(String(c.name!))
                            print(String(c.rank!))
                        }
                        print(self.coins.count)
                    }
                    
                }catch{
                    print(" ")
                }
            }
            
            
        }
        
        
        task.resume()
        
        
    }
    
    
}


