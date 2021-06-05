//
//  TextTestEditorApp.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 27.04.2021.
//

import SwiftUI

@main
struct TextTestEditorApp: App {
    @ObservedObject private var dataHelper = TextDataHelper()
    @ObservedObject private var personHelper = PersonDataHelper()
    var body: some Scene {
//        WindowGroup {
//            ListOfTextView(texts: $dataHelper.texts) {
//                dataHelper.save()
//            }
//            .onAppear {
//                dataHelper.load()
//                personHelper.load()
//            }
//        }
        WindowGroup{
            if KeychainHelper.shared.readPerson() != nil {
                ListOfTextView(texts: $dataHelper.texts) {
                                dataHelper.save()
                            }
                            .onAppear {
                                dataHelper.load()
                            }
            } else {
                HelloView()
            }
            
        }
    }
}
