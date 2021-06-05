//
//  AirDetailCell.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 05.06.2021.
//

import SwiftUI

struct AirDetailCell: View {
    
    @State var description: String
    @State var title: String
    
    var body: some View {
        Divider()
        HStack{
        Text(description)
            .font(.caption)
            .fontWeight(.medium)
            .multilineTextAlignment(.leading)
            Spacer()
        }
        
        HStack{
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .multilineTextAlignment(.leading)
            .padding(.top, 16)
            Spacer()
        }
    }
}

struct AirDetailIDCell: View {
    
    @State var description: String
    @State var title: String
    
    var body: some View {
        
        Divider()
        HStack{
        Text(description)
            .font(.caption)
            .fontWeight(.medium)
            .multilineTextAlignment(.leading)
            Spacer()
        }
        
        HStack{
        Text(title)
            .font(.caption2)
            .fontWeight(.semibold)
            .multilineTextAlignment(.leading)
            .padding(.top, 16)
            Spacer()
        }
    }
}

struct AirDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            AirDetailIDCell(description: "Proffession", title: "\(UUID().description)")
            
        }
    }
}
