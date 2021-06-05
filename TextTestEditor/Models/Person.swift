//
//  Person.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 11.05.2021.
//

import Foundation
import UIKit

struct Person: Codable, Identifiable, Hashable {
    let id = UUID().description
    var name: String
    var profession: String
    var dateOfRegistration: String
    var Locale: String
    var Company: String
    var Subscription: String
}

extension Person {
    static var data: Person {
        let today = Date()
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .short
        return Person(name: "Max Chesnikov", profession: "iOS Developer", dateOfRegistration: formatter1.string(from: today), Locale: "Russia", Company: "App-Smart", Subscription: "Premium")
    }
    
    static var person: Person? = nil
}
