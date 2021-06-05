//
//  KeychainHelper.swift
//  Portal
//
//  Created by Максим Чесников on 24.05.2021.
//

import Foundation
import KeychainSwift

struct KeychainHelper {
    
    enum TypeOfKeychain: String {
        case profile = "Profile"
    }
    
    static let shared = KeychainHelper()
    
    let keychain = KeychainSwift()
    
    func addPerson(person: Person) {
        if let encoded = encode(person) {
            keychain.set(encoded, forKey: TypeOfKeychain.profile.rawValue)
        }
    }
    
    func readPerson() -> Person? {
        
        let personData = keychain.getData(TypeOfKeychain.profile.rawValue)
        
        if let decoded: Person = decode(data: personData) {
            return decoded
        } else {
            return nil
        }
    }
    
    
}

extension KeychainHelper {
    func decode<T: Codable>(data: Data?) -> T? {
        let decoder = JSONDecoder()
        if let data = data, let decoded = try? decoder.decode(T.self, from: data) {
            return decoded
        }
        return nil
    }
    
    func encode<T: Codable>(_ item: T?) -> Data? {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(item) {
            return encoded
        }
        return nil
    }
    
}
