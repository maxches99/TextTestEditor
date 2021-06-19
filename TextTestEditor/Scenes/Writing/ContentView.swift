//
//  ContentView.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 27.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var textData: TextData
    
    let saveAction: () -> Void
    
    var body: some View {
        
        VStack(spacing: 0) {
            Spacer(minLength: 8)
            Image(systemName: "line.horizontal.3")
            Spacer(minLength: 8)
            HStack(alignment: .top) {
                Text(textData.title ?? "Unknown text")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding([.horizontal])
                Spacer()
                Menu("Actions") {
                            Button("Save as PDF", action: { print("‼️") })
                            Button("Save as DOCX", action: { print("🗑") })
                            Menu("Publish") {
                                Button("Instagram", action: { print("📑") })
                                Button("Telegram", action: { print("🔤") })
                            }
                        }
                .padding()
            }
            HStack(alignment: .top) {
                Text("Description")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .padding([.horizontal])
                Spacer()
            }
            TextEditor(text: $textData.text)
                .cornerRadius(20)
                .foregroundColor(.gray)
                .padding([.horizontal, .top])
                .onDisappear(perform: {
                    saveAction()
                })
                .ignoresSafeArea()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
        
        
    }
    
    func getAttrString() -> NSAttributedString {
        var attrStr = NSAttributedString(string: textData.title ?? "Unknown text", attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy)])
        var attrStr2 = NSAttributedString(string: textData.text ?? "Unknown text", attributes: [.font: UIFont.systemFont(ofSize: 14)])
        
        
        
        return attrStr2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(textData: .constant(TextData.data[0])) {}
            ContentView(textData: .constant(TextData.data[0])) {}
                .preferredColorScheme(.dark)
        }
    }
}
