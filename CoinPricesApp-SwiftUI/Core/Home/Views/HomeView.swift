//
//  HomeView.swift
//  CoinPricesApp-SwiftUI
//
//  Created by Gorkem on 13.07.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // Top Movers View
                TopMovesView()
                
                Divider()
                
                // All coins view
                AllCoinsView()
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
