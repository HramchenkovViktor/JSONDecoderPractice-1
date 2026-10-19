//
//  Struct.swift
//  JSONDecoderPractice№1
//
//  Created by Виктор on 19.10.2026.
//

import Foundation

struct Car: Decodable {
    let name: String
    let year: Int
}

struct CarResponse: Decodable {
    let cars: [Car]
}
