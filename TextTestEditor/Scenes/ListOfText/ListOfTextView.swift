//
//  ListOfTextView.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 28.04.2021.
//

import SwiftUI
import SlideOverCard

struct ListOfTextView: View {
    
    @Binding var texts: [TextData]
    @State var isPresented = false
    @State var isPresentedProfile = false
    @State var text: Binding<TextData> = .constant(TextData.data[0])
    @State var inputText: String = ""
    @State var shown: Bool = false
    
    let saveAction: () -> Void
    
    var body: some View {
        ZStack {
        VStack {
            ZStack {
                Text("Trap Editor")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack{
                    Spacer()
                    Button(action: {
                        isPresentedProfile = true
                    }) {
                        Text("MC")
                            .fontWeight(.bold)
                            .foregroundColor(Color(UIColor(named: "SecondAccentColor")!))
                            .background(Rectangle()
                                            .foregroundColor(Color(UIColor(named: "AccentColor")!))
                                            .frame(width: 50, height: 50, alignment: .center))
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(15)
                            .padding([.horizontal], 8.0)
                    }
                }
            }
            ScrollView {
                VStack {
                    ForEach (texts, id: \.self) { textData in
                        Button(action: {
                            text = binding(for: textData)
                            isPresented = true
                        }) {
                            TextCell(textData: .constant(textData))
                                .padding()
                                .foregroundColor(Color.init("AccentColor"))
                        }
                        
                    }
                }
                
            }
            HStack {
                Spacer()
                Button(action: {
                    shown = true
                }) {
                    Image(systemName: "plus")
                        .padding(.horizontal, 8)
                }
                .padding()
            }
        }.blur(radius: shown ? 30 : 0)
            if shown {
                TrapAlertView(text: "Enter name of new trap", inputText: $inputText, shown: $shown) {
                    texts.append(TextData(title: inputText, text: inputText, date: Date()))
                    saveAction()
                    inputText = ""
                }
                .animation(.easeIn)
            }
        }
        .sheet(isPresented: $isPresented) {
                ContentView(textData: text, saveAction: {
                                saveAction()
                                print("")
                                isPresented = false})
        }
        .sheet(isPresented: $isPresentedProfile) {
            AirProfile()
        }
        
    }
    
    private func binding(for text: TextData) -> Binding<TextData> {
        guard let textIndex = texts.firstIndex(where: { $0.id == text.id }) else {
            fatalError("Can't find scrum in array")
        }
        return $texts[textIndex]
    }
}

struct ListOfTextView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfTextView(texts: .constant(TextData.data)) {}
    }
}
