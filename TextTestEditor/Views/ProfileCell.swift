//
//  ProfileCell.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 11.05.2021.
//

import SwiftUI

struct ProfileCell: View {
    
    @State var leftText: String
    @State var rightText: String
    
    var body: some View {
        HStack {
            Text(leftText)
                .font(.title3)
                .fontWeight(.heavy)
            Spacer()
            Text(rightText)
                .font(.title3)
                .fontWeight(.semibold)
        }
    }
}

struct ProfileCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCell(leftText: "Name", rightText: Person.data.name)
            .previewLayout(.sizeThatFits)
    }
}
