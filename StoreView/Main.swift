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
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("color3"), Color("color2"), Color("color2"), Color("color3")],
                           startPoint: .bottomLeading,
                           endPoint: .topTrailing)
            .blur(radius: 2, opaque: false)
            .ignoresSafeArea()
            HStack  {
                VStack (alignment: .leading) {
                    Image("Person")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                    
                    Text("Hello")
                        .font(.system(size: 33) .monospaced() .bold())
                        .foregroundColor(.black)
                    Text("Alex")
                        .font(.system(size: 27) .monospaced())
                        .foregroundColor(.purple)
                        .shadow(color: .red, radius: 3, x: 1, y: 1)
                        .shadow(color: .blue, radius: 4, x: -1, y: -1)
                    
                    Button {
                        self.index = 0
                        withAnimation{ self.show.toggle() }
                    } label: {
                        HStack {
                            Image("Add")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .colorMultiply(Color("color3"))
                            
                            Text("Add")
                                .font(.system(size: 25) .bold())
                                .foregroundColor(self.index == 0 ? Color.white : Color("color2"))
                                .shadow(color: .black, radius: 1, x: 3, y: 3)
                        }
                        .padding(.vertical, 5)
                        .padding(.horizontal, 30)
                        .background(Color("color3").opacity(self.index == 0 ? 0.5 : 0) )
                        .clipShape(Capsule())
                    }
                    
                    Button {
                        self.index = 0
                        withAnimation{ self.show.toggle() }
                    } label: {
                        HStack {
                            Image("Add")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .colorMultiply(Color("color3"))
                            
                            Text("Add")
                                .font(.system(size: 25) .bold())
                                .foregroundColor(self.index == 0 ? Color.white : Color("color2"))
                                .shadow(color: .black, radius: 1, x: 3, y: 3)
                        }
                        .padding(.vertical, 5)
                        .padding(.horizontal, 30)
                        .background(Color("color3").opacity(self.index == 0 ? 0.5 : 0) )
                        .clipShape(Capsule())
                    }
                    
                    Button {
                        self.index = 0
                        withAnimation{ self.show.toggle() }
                    } label: {
                        HStack {
                            Image("Add")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .colorMultiply(Color("color3"))
                            
                            Text("Add")
                                .font(.system(size: 25) .bold())
                                .foregroundColor(self.index == 0 ? Color.white : Color("color2"))
                                .shadow(color: .black, radius: 1, x: 3, y: 3)
                        }
                        .padding(.vertical, 5)
                        .padding(.horizontal, 30)
                        .background(Color("color3").opacity(self.index == 0 ? 0.5 : 0) )
                        .clipShape(Capsule())
                    }
                    
                    Button {
                        self.index = 0
                        withAnimation{ self.show.toggle() }
                    } label: {
                        HStack {
                            Image("Add")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .colorMultiply(Color("color3"))
                            
                            Text("Add")
                                .font(.system(size: 25) .bold())
                                .foregroundColor(self.index == 0 ? Color.white : Color("color2"))
                                .shadow(color: .black, radius: 1, x: 3, y: 3)
                        }
                        .padding(.vertical, 5)
                        .padding(.horizontal, 30)
                        .background(Color("color3").opacity(self.index == 0 ? 0.5 : 0) )
                        .clipShape(Capsule())
                    }
                    
                    Divider()
                        .frame(width: 200, height: 2 )
                        .background(Color.black.opacity(0.3))
                    
                    Button {
                        self.index = 0
                        withAnimation{ self.show.toggle() }
                    } label: {
                        HStack {
                            Image("Add")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .colorMultiply(Color("color3"))
                            
                            Text("Add")
                                .font(.system(size: 25) .bold())
                                .foregroundColor(self.index == 0 ? Color.white : Color("color2"))
                                .shadow(color: .black, radius: 1, x: 3, y: 3)
                        }
                        .padding(.vertical, 5)
                        .padding(.horizontal, 30)
                        .background(Color("color3").opacity(self.index == 0 ? 0.5 : 0) )
                        .clipShape(Capsule())
                    }
                    
                    
                }
                .padding()
            }
        }
    }
}
//                   📌
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
