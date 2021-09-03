//
//  BarView.swift
//  Test
//
//  Created by leon on 2021/9/3.
//

import SwiftUI
struct Stock {
    let price: Double
}

private func getStocks() -> [Stock] {
    var stocks = [Stock]()
    for _ in 1...20 {
        let stock = Stock(price: Double.random(in:10...300))
        stocks.append(stock)
    }
    return stocks
}

private func getYearLabels() -> [String]{
    return (2011...2030).map{String($0)}
}

struct BarChartView: View {
    let labels: [String]
    let values: [Stock]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators:true){
            HStack(alignment:.bottom) {
                ForEach(values.indices, id:\.self){ index in
                    let l = labels[index]
                    let v = values[index]
                    VStack(){
                        Text("\(Int(v.price))")
                        Rectangle()
                            .fill(v.price<150 ? Color.red : Color.green)
                            .frame(width:45, height: CGFloat(v.price))
                        Text(l)
                    }.padding([.leading, .trailing], 1)
                }
            }.padding([.bottom],10)
        }.padding([.bottom],100)
    }
}

struct BarView: View {
    let labels: [String] = getYearLabels()
    let values: [Stock] = getStocks()
    
    var body: some View {
        VStack{
            Spacer()
            BarChartView(labels:labels, values:values)
        }.navigationTitle("Stocks")
    }
}


struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
