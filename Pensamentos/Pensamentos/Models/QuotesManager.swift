//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by administrator on 3/30/22.
//

import Foundation

class QuotesManager {
    
    let quotes:[Quote]
    
    init() {
        let quotesFileUrl = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try! Data(contentsOf: quotesFileUrl)
        let jsonDecoder = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData)
    }
    
    func getQuote() -> Quote {
        let quoteIndex = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[quoteIndex]
    }
}
