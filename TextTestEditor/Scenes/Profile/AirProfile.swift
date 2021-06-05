//
//  AirRegistrationView.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 05.06.2021.
//

import SwiftUI
import Liquid
import CoreImage.CIFilterBuiltins

struct AirProfile: View {
    
    @State var id = UUID().description
    @State var image: Image?
    @State var isHiddenBarcode = true
    @State var person = KeychainHelper.shared.readPerson() ?? Person.data
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    var body: some View {
        ScrollView {
        VStack {
            ZStack{
                Liquid(period: 2)
                    .padding(40)
                    .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            Spacer()
            HStack{
                Text(person.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                Spacer()
            }
            HStack {
                VStack{
                    AirDetailCell(description: "Profession", title: person.profession)
                    AirDetailCell(description: "Date of registration", title: person.dateOfRegistration)
                    AirDetailCell(description: "Locale", title: person.Locale)
                }
                Spacer()
                VStack{
                    AirDetailCell(description: "Company", title: person.Company)
                    AirDetailIDCell(description: "Your ID", title: person.id)
                    AirDetailCell(description: "Subscription", title: person.Subscription)
                }
            }
            .padding(.horizontal)
            
            Image(uiImage: generateQRCode(from: person.id))
                .interpolation(.none)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(.top)
            
            
        }
            
        }
    }
    
    func generateQRCode(from string: String) -> UIImage {
        let data = Data(string.utf8)
        filter.setValue(data, forKey: "inputMessage")

        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
            }
        }

        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
}

struct AirProfile_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AirProfile()
            AirProfile()
                .preferredColorScheme(.dark)
        }
    }
}
