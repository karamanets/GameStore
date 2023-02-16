//
//  Orders.swift
//  StoreView
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI

struct OrdersView: View {
    
    var body: some View {
        
        VStack {
            ZStack {
                Text("Maybe it's your app 😅 ")
                    .font(.system(size: 27) .monospaced() .bold())
                    .foregroundColor(Color("color4"))
                    .shadow(color: .red, radius: 3, x: 1, y: 1)
                    .shadow(color: .blue, radius: 4, x: -1, y: -1)

            }
            .rotationEffect(.degrees(-20))
            .offset(y: 160)
            
            Spacer()
            Image("picture4")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(color: .black, radius: 4, x: 3, y: 3)
                .overlay(Circle()
                    .stroke(.pink.opacity(0.5), lineWidth: 1 )
                    .shadow(color: .black, radius: 4, x: -3, y: -3) )
                .padding()
                .padding(.bottom, 80)
        }
    }
}
//                   🔱
struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        OrdersView()
    }
}
