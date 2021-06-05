//
//  TextCell.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 11.05.2021.
//

import SwiftUI

struct TextCell: View {
    
    @Binding var textData: TextData
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(textData.title ?? "")
                    .font(.title3)
                    .fontWeight(.heavy)
                Text(textData.date?.timeIntervalSince1970.debugDescription ?? "now")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
            Image(systemName: "arrow.forward")
        }
    }
}

struct TextCell_Previews: PreviewProvider {
    static var previews: some View {
        TextCell(textData: .constant(TextData.data[0]))
            .previewLayout(.sizeThatFits)
    }
}
