//
//  RegistrationCell.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 23.05.2021.
//

import SwiftUI

struct RegistrationCell: View {
    @State var leftText: String
    @Binding var rightText: String
    
    var body: some View {
        HStack {
            Text(leftText)
                .font(.title3)
                .fontWeight(.heavy)
            Spacer()
            TextField(leftText, text: $rightText)
                .multilineTextAlignment(.trailing)
                .font(.title3)
                
        }
    }
}

struct RegistrationCell_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationCell(leftText: "Name", rightText: .constant(Person.data.name))
            .previewLayout(.sizeThatFits)
    }
}
