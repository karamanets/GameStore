//
//  GamepadView.swift
//  StoreView
//
//  Created by Alex Karamanets on 14.02.2023.
//

import SwiftUI


struct GamepadWithAnimation: View {
    
    @State private var animationBackLight = 1.0
    
    var body: some View {
        ZStack {
            
            Image("Line")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(height: 220)
                .shadow(color: .pink, radius: 30, x: 5, y: 5)
                .rotationEffect(.degrees(6))
                .opacity(animationBackLight)
                .offset(x: 65, y: 230)
            
            Image("Line")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(height: 220)
                .shadow(color: .pink, radius: 30, x: 5, y: 5)
                .rotationEffect(.degrees(-70))
                .opacity(animationBackLight)
                .onAppear {
                    withAnimation(.interpolatingSpring(stiffness: 10, damping: 15).repeatForever()) {
                        self.animationBackLight = 0.0
                    }
                }
                .offset(x: 75, y: 220)
            
            Image("Xgame")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 160, height: 160)
                .rotationEffect(.degrees(-20))
                .offset(x: 90, y: 240)
        }
    }
}
//                   🔱
struct GamepadWithAnimation_Previews: PreviewProvider {
    static var previews: some View {
        GamepadWithAnimation()
    }
}
