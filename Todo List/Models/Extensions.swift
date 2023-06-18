//
//  Extension.swift
//  Todo List
//
//  Created by Roshan Chaudhari on 2023-06-01.
//

import Foundation
extension Encodable {
    func asDictionary() -> [String:Any]{
        print("Data Encode ")

        guard let data = try? JSONEncoder().encode(self)else{
            print("Data Encode error")
            return [:]
        }
        do {print("Data Serialization loop")
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        }
        catch {
            return[:]
        }
    }
}
