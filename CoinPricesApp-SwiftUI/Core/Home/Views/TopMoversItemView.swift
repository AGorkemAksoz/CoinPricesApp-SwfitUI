//
//  TopMoversItemView.swift
//  CoinPricesApp-SwiftUI
//
//  Created by Gorkem on 13.07.2023.
//

import SwiftUI

struct TopMoversItemView: View {
    var coin: Item
    var body: some View {
        VStack(alignment: .leading) {
            //image
            
            AsyncImage(url: URL(string: coin.small ?? "")) { image in
                image
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.orange)
                    .padding(.bottom, 8)
            } placeholder: {
                ProgressView()
            }

            
            //coin info
            
            HStack(spacing: 2) {
                Text(coin.symbol ?? "")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text(String(coin.priceBtc ?? 31))
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // coin percent change
            
            Text(String(coin.marketCapRank ?? 32))
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView(coin: dummyTopCoinsData[0].item!)
    }
}
