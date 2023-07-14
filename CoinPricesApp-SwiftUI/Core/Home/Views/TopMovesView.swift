//
//  TopMovesView.swift
//  CoinPricesApp-SwiftUI
//
//  Created by Gorkem on 13.07.2023.
//

import SwiftUI

struct TopMovesView: View {
    var coin: [Coins]
    var body: some View {
        VStack(alignment: .leading ) {
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(coin, id: \.item?.id) { element in
                        TopMoversItemView(coin: element.item!)
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMovesView_Previews: PreviewProvider {
    static var previews: some View {
        TopMovesView(coin: dummyTopCoinsData)
    }
}
