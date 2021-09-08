//
//  StockListViewModel.swift
//  Test
//
//  Created by leon on 2021/9/8.
//

import Foundation

struct StockViewModel {
    let stock: LStock
    
    var name : String {
        stock.name
    }
    
    var price : Double {
        stock.price
    }
}

class StockListViewModel: ObservableObject{
    @Published var stocks: [StockViewModel] = []
    
    func getAllStocks() {
        StockService().getStocks { stocks in
            DispatchQueue.main.async {
                self.stocks = stocks.map(StockViewModel.init)
            }
        }
    }
}
