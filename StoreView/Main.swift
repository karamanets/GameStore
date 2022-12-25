//
//  Main.swift
//  StoreView
//
//  Created by Alex Karamanets on 23.12.2022.
//

import SwiftUI

struct Main: View {
    
    @State private var show  = false
    @State private var index = 0
    
    @State private var rotation = 1.0
    @State private var animationBackLight = 1.0

    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("color3"), Color("color2"), Color("color2"), Color("color3")],
                           startPoint: .bottomLeading,
                           endPoint: .topTrailing)
            .blur(radius: 2, opaque: false)
            .ignoresSafeArea()
            
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
                            Add()
                        } else if self.index == 1 {
                            Basket()
                        } else if self.index == 2 {
                            Favorite()
                        } else if self.index == 3 {
                            Orders()
                        }
                    }
                    .opacity(self.show ? 1 : 0 )
                }
            }
            .background(
                LinearGradient(colors: [Color("color2"), Color("color3"), Color("color2"), Color("color3")],
                               startPoint: .bottomLeading,
                               endPoint: .topTrailing)
                .blur(radius: 2, opaque: false) )
               
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
//                   📌
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}

struct Add: View {
    
    var body: some View {
        
        VStack {
            Spacer()
            Image("Person1")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
            Spacer()
        }
    }
}

struct Basket: View {
    
    var body: some View {
        
        VStack {
            
            
        }
    }
}

struct Favorite: View {
    
    var body: some View {
        
        VStack {
            
            
        }
    }
}

struct Orders: View {
    
    var body: some View {
        
        VStack {
            
            
        }
    }
}
