//
//  Manger.swift
//  BeBetta_Assingment
//
//  Created by Chetan Sanwariya on 30/01/24.
//

import Foundation

struct Manager {
    func getSportsSectionItem() {
        
        
        guard let path = Bundle.main.path(forResource: "file", ofType: "json"),
              FileManager.default.fileExists(atPath: path) else {
            print("file not there")
            return
        }

        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path))
            let decoder = JSONDecoder()
            let decodedData = try decoder.decode(SportsSectionModal.self, from: data)

            print("Type: \(decodedData.type)")
            print("List:")
            for item in decodedData.list {
                print("Name: \(item.name), ID: \(item.id)")
            }
        } catch {
            print ("error decoding")
        }
    }
}

