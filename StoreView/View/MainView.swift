//
//  MainButton.swift
//  StoreView
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var vm: MainViewModel
    
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
                                .rotationEffect(.degrees(vm.rotation))
                                .onAppear {
                                    withAnimation(.easeOut(duration: ( 10 )).repeatForever()) {
                                        vm.rotation = 360
                                    }
                                })
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
                    vm.index = 0
                    withAnimation(.linear) { vm.show = true }
                } label: {
                    HStack {
                        Image("Add")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .colorMultiply(Color("color5"))
                        
                        Text("Add")
                            .font(.system(size: 25) .bold())
                            .foregroundColor(vm.index == 0 ? Color.white : Color("color5"))
                            .shadow(color: .black, radius: 1, x: 3, y: 3)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 30)
                    .background(Color("color3").opacity(vm.index == 0 ? 0.5 : 0) )
                    .clipShape(Capsule())
                }
                
                Button {
                    vm.index = 1
                    withAnimation(.linear) {vm.show = true }
                } label: {
                    HStack {
                        Image("Cart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .colorMultiply(Color("color5"))
                        
                        Text("Cart")
                            .font(.system(size: 25) .bold())
                            .foregroundColor(vm.index == 1 ? Color.white : Color("color5"))
                            .shadow(color: .black, radius: 1, x: 3, y: 3)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 30)
                    .background(Color("color3").opacity(vm.index == 1 ? 0.5 : 0) )
                    .clipShape(Capsule())
                }
                
                Button {
                    vm.index = 2
                    withAnimation(.linear) { vm.show = true }
                } label: {
                    HStack {
                        Image("Favorite")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .colorMultiply(Color("color5"))
                        
                        Text("Favorite")
                            .font(.system(size: 25) .bold())
                            .foregroundColor(vm.index == 2 ? Color.white : Color("color5"))
                            .shadow(color: .black, radius: 1, x: 3, y: 3)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 30)
                    .background(Color("color3").opacity(vm.index == 2 ? 0.5 : 0) )
                    .clipShape(Capsule())
                }
                
                Button {
                    vm.index = 3
                    withAnimation(.linear) { vm.show = true }
                } label: {
                    HStack {
                        Image("Orders")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .colorMultiply(Color("color5"))
                        
                        Text("Orders")
                            .font(.system(size: 25) .bold())
                            .foregroundColor(vm.index == 3 ? Color.white : Color("color5"))
                            .shadow(color: .black, radius: 1, x: 3, y: 3)
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 30)
                    .background(Color("color3").opacity(vm.index == 3 ? 0.5 : 0) )
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
                            .foregroundColor(vm.index == 4 ? Color.white : Color("color5"))
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
}
//                   🔱
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(vm: MainViewModel(rotation: 1.0, index: 0, show: false))
    }
}
