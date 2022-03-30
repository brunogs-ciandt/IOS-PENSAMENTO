//
//  Quote.swift
//  Pensamentos
//
//  Created by administrator on 3/30/22.
//

import Foundation

struct Quote : Codable {
    let quote: String
    let author : String
    let image: String
    
    var quoteFormatter:String {
        return "-" + quote + "-"
    }
    
    var authorFormatter: String {
        return "_" + author + "-"
    }
}
