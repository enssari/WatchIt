//
//  JSONManager.swift
//  WatchIt
//
//  Created by Enes Sarı on 8/19/24.
//

import Foundation

struct Film: Codable, Identifiable {
    var id = UUID()
    let name: String
    let category: String
    var image: String
    
    private enum CodingKeys: String, CodingKey {
        case name, category, image
    }
}


class JSONManager {
    static func loadData() -> [Film]? {
        guard let url = Bundle.main.url(forResource: "FilmsData", withExtension: "json") else {
            print("Could not get the url.")
            return nil
        }

        guard let data = try? Data(contentsOf: url) else {
            print("Could not get the data")
            return nil
        }

        let decoder = JSONDecoder()

        do {
            let films = try decoder.decode([Film].self, from: data)
            return films
        } catch {
            print("Could not read the JSON data")
            return nil
        }
    }
}




