//
//  Main.swift
//  StoreView
//
//  Created by Alex Karamanets on 23.12.2022.
//

import SwiftUI

struct StoreView: View {
    
    @StateObject private var vm = MainViewModel()
    
    var body: some View {
        
        ZStack {
            
            BackgroundColor()
            
            GamepadWithAnimation()
            
            MainView(vm: self.vm)
            
            VStack {
                
                BackButton(vm: self.vm)
                
                VStack {
                    Views(currentView: vm.index)
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
                withAnimation(.linear) {
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
