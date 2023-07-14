//
//  CoinRowView.swift
//  CoinPricesApp-SwiftUI
//
//  Created by Gorkem on 13.07.2023.
//

import SwiftUI

struct CoinRowView: View {
    var coin: CoinElement
    var body: some View {
        HStack {
            // market cap rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            // image
            AsyncImage(url: URL(string: coin.image!)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.orange)
            } placeholder: {
                ProgressView()
            }

                
            // coin name info
            
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name ?? "")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                    
                Text(coin.symbol ?? "")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            // coin price info
            
            VStack(alignment: .trailing, spacing: 4) {
                Text(String("$\(coin.currentPrice ?? 31)"))
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                    
                Text(String("%\(coin.priceChangePercentage24HInCurrency ?? 31)"))
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundColor(coin.priceChangePercentage24HInCurrency! < 0 ? .red : .green)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView(coin: dummyCoin.first!)
    }
}
