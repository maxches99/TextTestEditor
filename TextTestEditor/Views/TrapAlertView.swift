//
//  TrapAlertView.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 05.06.2021.
//

import SwiftUI

struct TrapAlertView: View {
    @State var text: String
    @Binding var inputText: String
    @Binding var shown: Bool
    let saveAction: () -> Void
    
    var body: some View {
        VStack {
            Text(text)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("SecondAccentColor"))
            TextField("Enter", text: $inputText)
                .multilineTextAlignment(.center)
                .colorInvert()
                .frame(width: 200, height: 40, alignment: .center)
            Button(action: {
                shown = false
                saveAction()
            }) {
                Text("Save")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("AccentColor"))
            }
            .padding()
            .background( RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("SecondAccentColor")))
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
        )
    }
}

struct TrapAlertView_Previews: PreviewProvider {
    static var previews: some View {
        TrapAlertView(text: "Enter name of new trap", inputText: .constant(""), shown: .constant(true)) {}
    }
}
