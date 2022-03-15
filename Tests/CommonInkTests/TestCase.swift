//
//  File.swift
//  
//
//  Created by Zhijin Chen on 2022/03/13.
//

import Foundation

struct TestCase: Decodable {
    let markdown: String
    let html: String
    let example: Int
    let start_line: Int
    let end_line: Int
    let section: String
    
    
    static let all: [Self] = {
        let json = try! String.init(contentsOf: .init(string: "https://spec.commonmark.org/0.29/spec.json")!, encoding: .utf8).data(using: .utf8)!
        return try! JSONDecoder().decode([Self].self, from: json)
    }()
}
