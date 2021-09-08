//
//  StockService.swift
//  Test
//
//  Created by leon on 2021/9/8.
//

import Foundation

struct LStock {
    let name: String
    let price: Double
}

class StockService {
    func getStocks(completion: @escaping ([LStock]) -> Void ){
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
            let stocks = [
                LStock(name:"Apple", price: Double.random(in: 1000...1500)),
                LStock(name:"Google", price: Double.random(in: 100...1900)),
                LStock(name:"Microsoft", price: Double.random(in: 500...900))
            ]
            completion(stocks)
        }
    }
}
