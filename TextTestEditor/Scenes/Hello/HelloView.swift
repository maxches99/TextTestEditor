//
//  HelloView.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 23.05.2021.
//

import SwiftUI
import SlideOverCard

struct HelloView: View {
    
    @State var text = "Hello, trap!"
    @State var isPresentedRegistration = false
    @State var isPresentedList = false
    
    @ObservedObject private var dataHelper = TextDataHelper()
    
    var body: some View {
        ZStack{
            Text(text)
                .font(.title)
                .fontWeight(.heavy)
                .animation(.easeIn)
            VStack {
                Spacer()
                Button(action: {isPresentedRegistration = true}) {
                    Text("Continue")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("SecondAccentColor"))
                }
                .padding()
                .background( RoundedRectangle(cornerRadius: 15))
                .padding()
            }
            
        }
        .onAppear(perform: {
            animate()
            dataHelper.load()
        })
        .slideOverCard(isPresented: $isPresentedRegistration, onDismiss: {
            isPresentedList = true
        }, options: [.hideExitButton]) {
            RegistrationView(state: .Name)
        }
        .fullScreenCover(isPresented: $isPresentedList, content: {
            ListOfTextView(texts: $dataHelper.texts) {
                dataHelper.save()
            }
        })
    }
    
    func animate() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            text = UIDevice().name
        }
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
        HelloView()
            .preferredColorScheme(.dark)
    }
}
