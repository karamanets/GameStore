//
//  EnumGetView.swift
//  StoreView
//
//  Created by Alex Karamanets on 28.02.2023.
//

import SwiftUI

struct Views: View {
    
    let currentView: Int
    
    var body: some View {
  
            switch currentView {
            case 0: AddView()
            case 1: CartView()
            case 2: FavoritesView()
            case 3: OrdersView()
            default: AddView()
            }
    }
}
//                   🔱
struct Views_Previews: PreviewProvider {
    static var previews: some View {
        Views(currentView: 2)
    }
}

