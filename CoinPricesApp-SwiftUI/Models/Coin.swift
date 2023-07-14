//
//  Coin.swift
//  CoinPricesApp-SwiftUI
//
//  Created by Gorkem on 14.07.2023.
//

import Foundation

// MARK: - CoinElement
struct CoinElement: Codable {
    let id, symbol, name: String?
    let image: String?
    let currentPrice: Double?
    let marketCap, marketCapRank: Int?
    let fullyDilutedValuation: Int?
    let totalVolume, high24H, low24H, priceChange24H: Double?
    let priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H, circulatingSupply: Double?
    let totalSupply, maxSupply: Double?
    let ath, athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let roi: Roi?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case roi
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
    }
}

// MARK: - Roi
struct Roi: Codable {
    let times: Double?
    let currency: Currency?
    let percentage: Double?
}

enum Currency: String, Codable {
    case btc = "btc"
    case eth = "eth"
    case usd = "usd"
}

// MARK: - SparklineIn7D
struct SparklineIn7D: Codable {
    let price: [Double]?
}

typealias Coin = [CoinElement]


let dummyCoin = [CoinElement(id: "1", symbol: "BTC", name: "Bitcoin", image: "bitcoinsign.circle.fill", currentPrice: 24000, marketCap: 123, marketCapRank: 32, fullyDilutedValuation: 432, totalVolume: 2321, high24H: 2323, low24H: 1212, priceChange24H: 1232, priceChangePercentage24H: 2323, marketCapChange24H: 2312, marketCapChangePercentage24H: 3232, circulatingSupply: 231, totalSupply: 343, maxSupply: 1212, ath: 3232, athChangePercentage: 1234, athDate: "ffdfdf", atl: 3232, atlChangePercentage: 3123, atlDate: "fgggr", roi: Roi(times: 323, currency: Currency(rawValue: "ff"), percentage: 231), lastUpdated: "fdfd", sparklineIn7D: SparklineIn7D(price: [3232, 3232]), priceChangePercentage24HInCurrency: 53)]
