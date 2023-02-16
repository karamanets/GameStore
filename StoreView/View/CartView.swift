//
//  CartView.swift
//  StoreView
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI

struct CartView: View {
    
    var body: some View {
        
        VStack {
            Spacer()
            Image("picture2")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(color: .black, radius: 4, x: 3, y: 3)
                .overlay(Circle()
                    .stroke(.pink.opacity(0.5), lineWidth: 1 )
                    .shadow(color: .black, radius: 4, x: -3, y: -3) )
                .padding()
            Spacer()
        }
    }
}
//                   🔱
struct Basket_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
