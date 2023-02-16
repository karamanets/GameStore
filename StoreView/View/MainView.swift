//
//  Main.swift
//  StoreView
//
//  Created by Alex Karamanets on 23.12.2022.
//

import SwiftUI

struct MainView: View {
    
    @State private var show  = false
    @State private var index = 0
    
    @State private var rotation = 1.0
    @State private var animationBackLight = 1.0

    var body: some View {
        
        ZStack {
            BackgroundColor()
            
            GamepadWithAnimation(animationBackLight: $animationBackLight)
            
            MainButtonsAnimations(rotation: $rotation, index: $index, show: $show)

            VStack {
                GeometryReader{ _ in
                    HStack {
                        Button {
                            withAnimation { self.show = false }
                        } label: {
                            Image(systemName: "arrowshape.turn.up.backward.2")
                                .foregroundColor(Color("color1"))
                                .font(.system(size: 23) .bold())
                        }
                        Text(self.index == 0 ? "Add" : (self.index == 1 ? "Basket" : (self.index == 2 ? "Favorite" : "Orders" )))
                            .font(.system(size: 21))
                            .foregroundColor(Color("color1"))
                            .onTapGesture {
                                withAnimation { self.show = false }
                            }
                    }
                    .padding()
                    .padding(.top)
                    .offset(y: 20)
                    .opacity(self.show ? 1 : 0)
                    
                    VStack {
                        
                        if self.index == 0 {
                            AddView()
                        } else if self.index == 1 {
                            CartView()
                        } else if self.index == 2 {
                            FavoritesView()
                        } else if self.index == 3 {
                            OrdersView()
                        }
                    }
                    .opacity(self.show ? 1 : 0 )
                }
            }
            .background(  BackgroundColor() )
            .cornerRadius(self.show ? 0 : 50)
            .scaleEffect(self.show ? 1 : 0.9)
            .offset(x: self.show ? 0 : 240, y: self.show ? 0 : 35 )
            .rotationEffect(.init(degrees: self.show ? 0 : -5))
            .opacity(self.show ? 1 : 0.6)
        }
        .ignoresSafeArea()
        .gesture(DragGesture(minimumDistance: 40)
            .onEnded { _ in
                withAnimation {
                    if self.show == true {
                        self.show = false
                    }
                }
            }
        )
    }
}
//                   🔱
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}














