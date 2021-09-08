//
//  StockView.swift
//  Test
//
//  Created by leon on 2021/9/8.
//

import SwiftUI

struct StockView: View {
    @StateObject private var stockListVM = StockListViewModel()
    
    var body: some View {
        List(stockListVM.stocks, id:\.name){stock in
            HStack{
                Text(stock.name)
                Spacer()
                //Text(stock.price.formatted(.currency(code: "USD")))
                Text("\(stock.price)")
            }
        }.onAppear{
            stockListVM.getAllStocks()
        }
//        }.refreshable{
//            stockListVM.getAllStocks()
//        }
    }
}

struct StockView_Previews: PreviewProvider {
    static var previews: some View {
        StockView()
    }
}
