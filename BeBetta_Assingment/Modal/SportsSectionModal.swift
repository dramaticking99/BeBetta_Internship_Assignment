//
//  SportsSectionModal.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 30/01/24.
//

import Foundation

struct SportsSectionModal: Decodable {
    var type : String
    var list : [SportsSectionItem]
}

struct SportsSectionItem: Decodable {
    var name: String
    var id: String
}
