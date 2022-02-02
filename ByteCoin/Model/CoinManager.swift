//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate{
    func didUpdateCoin(coin: Coin)
    func didFailWithError(error : Error)
}

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/"
    let apiKey = "?apikey=9B22ECFF-03BD-4712-9056-882DC0B4D9A6"
    //var delegate = CoinManagerDelegate?()
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func getCoinPrice(for currency: String){
        let urlString = "\(baseURL)\(currency)\(apiKey)"
        print(urlString)
        performrequest(with: currency)
    }
    
    func performrequest(with urlString: String){
    }
    
}
