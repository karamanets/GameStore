//
//  MainButton.swift
//  StoreView
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI

struct MainButtons: View {
    
    @Binding var rotation: Double
    @Binding var index   : Int
    @Binding var show    : Bool
    
    var body: some View {
        HStack  {
            VStack (alignment: .leading) {
                VStack {
                    Image("Person")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .padding(.all, 25)
                        .overlay(
                            Image("Circle")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                                .shadow(color: .pink, radius: 2, x: 2, y: 0)
                                .shadow(color: .blue, radius: 2, x: 3, y: 0)
                                .rotationEffect(.degrees(rotation))
                                .animation(.easeOut(duration: ( 15 )).delay(0.1), value: rotation)
                                .onAppear { repeatAnimationPerson() } )
                }
                Text("Hello,")
                    .font(.system(size: 33) .monospaced() .bold())
                    .foregroundColor(Color("color4"))
                    .shadow(color: .red, radius: 3, x: 1, y: 1)
                    .shadow(color: .blue, radius: 4, x: -1, y: -1)
                
                Text("Alex")
                    .font(.system(size: 27) .monospaced() .bold())
                    .foregroundColor(Color("color4"))
                    .shadow(color: .red, radius: 3, x: 1, y: 1)
                    .shadow(color: .blue, radius: 4, x: -1, y: -1)
                
                Button {
                    self.index = 0
                    withAnimation{ self.show = true }
                } label: {
                    HStack {
                        Image("Add")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .colorMultiply(Color("color5"))
                        
                        Text("Add")
                            .font(.system(size: 25) .bold())
                            .foregroundColor(self.index == 0 ? Color.white : Color("color5"))
                            .shadow(color: .black, radius: 1, x: 3, y: 3)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 30)
                    .background(Color("color3").opacity(self.index == 0 ? 0.5 : 0) )
                    .clipShape(Capsule())
                }
                
                Button {
                    self.index = 1
                    withAnimation{ self.show = true }
                } label: {
                    HStack {
                        Image("Basket")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .colorMultiply(Color("color5"))
                        
                        Text("Basket")
                            .font(.system(size: 25) .bold())
                            .foregroundColor(self.index == 1 ? Color.white : Color("color5"))
                            .shadow(color: .black, radius: 1, x: 3, y: 3)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 30)
                    .background(Color("color3").opacity(self.index == 1 ? 0.5 : 0) )
                    .clipShape(Capsule())
                }
                
                Button {
                    self.index = 2
                    withAnimation{ self.show = true }
                } label: {
                    HStack {
                        Image("Favorite")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .colorMultiply(Color("color5"))
                        
                        Text("Favorite")
                            .font(.system(size: 25) .bold())
                            .foregroundColor(self.index == 2 ? Color.white : Color("color5"))
                            .shadow(color: .black, radius: 1, x: 3, y: 3)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 30)
                    .background(Color("color3").opacity(self.index == 2 ? 0.5 : 0) )
                    .clipShape(Capsule())
                }
                
                Button {
                    self.index = 3
                    withAnimation{ self.show = true }
                } label: {
                    HStack {
                        Image("Orders")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .colorMultiply(Color("color5"))
                        
                        Text("Orders")
                            .font(.system(size: 25) .bold())
                            .foregroundColor(self.index == 3 ? Color.white : Color("color5"))
                            .shadow(color: .black, radius: 1, x: 3, y: 3)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 30)
                    .background(Color("color3").opacity(self.index == 3 ? 0.5 : 0) )
                    .clipShape(Capsule())
                }
                Divider()
                    .frame(width: 200, height: 2 )
                    .background(Color.black.opacity(0.3))
                
                Button {
                    // some code
                } label: {
                    HStack {
                        Image("Out")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .colorMultiply(Color("color5"))
                        
                        Text("Out")
                            .font(.system(size: 25) .bold())
                            .foregroundColor(self.index == 4 ? Color.white : Color("color5"))
                            .shadow(color: .black, radius: 1, x: 3, y: 3)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 30)
                    .clipShape(Capsule())
                }
            }
            .padding()
        }
    }
    func repeatAnimationPerson() {
        if  self.rotation == 1.0 {
            self.rotation += 360
            DispatchQueue.main.asyncAfter(deadline: .now() + 15.1) {
                self.rotation -= 360
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
            repeatAnimationPerson()
        }
    }
}


struct GamepadWithAnimation: View {
    
    @Binding var animationBackLight: Double
    
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
                .onAppear {
                    let baseAnimation = Animation.interpolatingSpring(stiffness: 10, damping: 15)
                    let rapited = baseAnimation
                        .repeatForever(autoreverses: true)
                    return withAnimation(rapited) { self.animationBackLight = 0.0 }
                }
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
                    let baseAnimation = Animation.interpolatingSpring(stiffness: 10, damping: 15)
                    let rapited = baseAnimation
                        .repeatForever(autoreverses: true)
                    return withAnimation(rapited) { self.animationBackLight = 0.0 }
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
