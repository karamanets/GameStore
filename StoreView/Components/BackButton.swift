//
//  BackButton.swift
//  StoreView
//
//  Created by Alex Karamanets on 28.02.2023.
//

import SwiftUI

struct BackButton: View {
    
    @ObservedObject var vm: MainViewModel
    
    var body: some View {
        
        HStack {
            Button {
                withAnimation(.linear) { vm.show = false }
            } label: {
                Image(systemName: "arrowshape.turn.up.backward.2")
                    .foregroundColor(Color("color3"))
                    .font(.system(size: 23) .bold())
            }
            Text(vm.index == 0 ?
                 "Add" : (vm.index == 1 ?
                          "Basket" : (vm.index == 2 ?
                                      "Favorite" : "Orders" )))
            
                .font(.system(size: 21))
                .foregroundColor(Color("color3"))
                .onTapGesture {
                    withAnimation(.linear) { vm.show = false }
                }
        }
        .padding()
        .padding(.top)
        .offset(y: 20)
        .opacity(vm.show ? 1 : 0)
    }
}
//                🔱
struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton(vm: MainViewModel(rotation: 0.0, index: 1, show: true))
    }
}
