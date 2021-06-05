//
//  StateOfRegistration.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 05.06.2021.
//

import Foundation

enum StateOfRegistration {
    case Name
    case Profession
    case DateOfRegistration
    case Locale
    case Company
    case ID
    case Subscription
    
    var title: String {
        switch self {
        case .Name:
            return "Name"
        case .Profession:
            return "Profession"
        case .DateOfRegistration:
            return "Date of registration"
        case .Locale:
            return "Locale"
        case .Company:
            return "Company"
        case .ID:
            return "Your ID"
        case .Subscription:
            return "Subscription"
        }
    }
    
    var description: String {
        switch self {
        case .Name:
            return "Enter your name"
        case .Profession:
            return "Enter your profession"
        case .Locale:
            return "Enter your locale"
        case .Company:
            return "Enter your company name"
        default:
            return ""
        }
    }
}
