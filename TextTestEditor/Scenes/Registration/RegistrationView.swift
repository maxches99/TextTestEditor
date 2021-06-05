//
//  RegistrationView.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 12.05.2021.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var text: String = ""
    @State var people: Person = Person.data
    @State var state: StateOfRegistration
    @State var isPresented = false
    
    @ObservedObject private var dataHelper = TextDataHelper()
    
    var body: some View {
        
        ZStack() {
            
            VStack() {
                HStack() {
                    Text(state.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                TextField(state.description, text: $text)
                
            }
            .padding()
            VStack() {
                Spacer()
                Button(action: {
                    saveInfo()
                }) {
                    ZStack {
                        Text("Next")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(UIColor(named: "SecondAccentColor")!))
                    }
                }
                
                .padding()
                .background( RoundedRectangle(cornerRadius: 15))
                .frame(height: 50)
            }
            
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        .fullScreenCover(isPresented: $isPresented) {
            ListOfTextView(texts: $dataHelper.texts) {
                            dataHelper.save()
                        }
                        .onAppear {
                            dataHelper.load()
                        }
        }
    }
    
    func saveInfo() {
        switch state {
        case .Name:
            people.name = text
            state = .Profession
            text = ""
            return
        case .Profession:
            people.profession = text
            state = .Locale
            text = ""
            return
        case .Locale:
            people.Locale = text
            state = .Company
            text = ""
            return
        case .Company:
            people.Company = text
            KeychainHelper.shared.addPerson(person: people)
            isPresented = true
        default:
            text = ""
            return
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        
        RegistrationView(state: .DateOfRegistration)
    }
}
