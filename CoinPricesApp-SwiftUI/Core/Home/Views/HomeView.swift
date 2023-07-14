//
//  HomeView.swift
//  CoinPricesApp-SwiftUI
//
//  Created by Gorkem on 13.07.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @State var coin: Coin
    @State var topCoins: [Coins]
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // Top Movers View
                TopMovesView(coin: topCoins)
                
                Divider()
                
                // All coins view
                AllCoinsView(coin: coin)
            }
            .navigationTitle("Live Prices")
        }
        .task {
            do {
                coin =  try await homeViewModel.fetchCoinData()
                topCoins = try await homeViewModel.fetchTopCoinsData()!
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(coin: dummyCoin, topCoins: dummyTopCoinsData)
    }
}
