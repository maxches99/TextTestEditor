//
//  LoadingView.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 03.05.2021.
//

import SwiftUI
import Neumorphic
import Liquid
import Shiny

struct LoadingView: View {
    
    var body: some View {
        ZStack {
            Liquid()
                .frame(width: 300, height: 300)
                .foregroundColor(.blue)
                .opacity(0.3)
            
            
            Liquid()
                .frame(width: 280, height: 280)
                .foregroundColor(.blue)
                .opacity(0.6)
            
            Liquid(samples: 3)
                .frame(width: 260, height: 260)
                .foregroundColor(.blue)
            
            VStack {
                Text("Text editor").font(.largeTitle).foregroundColor(.white)
                Text("by Max Chesnikov").font(.footnote).foregroundColor(.white)
                
            }
            
        }
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoadingView()
            LoadingView()
                .preferredColorScheme(.dark)
        }
    }
}


