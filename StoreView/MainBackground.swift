//
//  BackgroundMain.swift
//  StoreView
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI

struct BackgroundColor: View {
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [Color("color3"),
                                    Color("color2"),
                                    Color("color2"),
                                    Color("color3")],
                           
                           startPoint: .bottomLeading,
                           endPoint  : .topTrailing )
            
            .blur(radius: 2, opaque: false)
            .ignoresSafeArea()
        }
    }
}

