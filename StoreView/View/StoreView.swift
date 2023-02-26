//
//  Main.swift
//  StoreView
//
//  Created by Alex Karamanets on 23.12.2022.
//

import SwiftUI

struct StoreView: View {
    
    @StateObject private var vm = MainViewModel(rotation: 1.0, index: 0, show: false)
    
    var body: some View {
        
        ZStack {
            
            BackgroundColor()
            
            GamepadWithAnimation()
            
            MainView(vm: self.vm)

            VStack {
                    HStack {
                        Button {
                            withAnimation { vm.show = false }
                        } label: {
                            Image(systemName: "arrowshape.turn.up.backward.2")
                                .foregroundColor(Color("color1"))
                                .font(.system(size: 23) .bold())
                        }
                        Text(vm.index == 0 ? "Add" : (vm.index == 1 ? "Basket" : (vm.index == 2 ? "Favorite" : "Orders" )))
                            .font(.system(size: 21))
                            .foregroundColor(Color("color1"))
                            .onTapGesture {
                                withAnimation { vm.show = false }
                            }
                    }
                    .padding()
                    .padding(.top)
                    .offset(y: 20)
                    .opacity(vm.show ? 1 : 0)
                    
                    VStack {
                        if vm.index == 0 {
                            AddView()
                        } else if vm.index == 1 {
                            CartView()
                        } else if vm.index == 2 {
                            FavoritesView()
                        } else if vm.index == 3 {
                            OrdersView()
                        }
                    }
                    .opacity(vm.show ? 1 : 0 )
            }
            .background(  BackgroundColor() )
            .cornerRadius(vm.show ? 0 : 50)
            .scaleEffect(vm.show ? 1 : 0.9)

            .offset(x: vm.show ? 0 : 240, y: vm.show ? 0 : 35 )
            .rotationEffect(.init(degrees: vm.show ? 0 : -5))
            .opacity(vm.show ? 1 : 0.6)
        }
        .ignoresSafeArea()
        .gesture(DragGesture(minimumDistance: 40)
            .onEnded { _ in
                withAnimation {
                    if vm.show == true {
                        vm.show = false
                    }
                }
            }
        )
    }
}
//                   🔱
struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}














