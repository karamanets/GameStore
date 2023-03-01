//
//  MainViewModel.swift
//  StoreView
//
//  Created by Alex Karamanets on 26.02.2023.
//

import Foundation


class MainViewModel: ObservableObject {
    
    @Published var rotation: Double
    @Published var index   : Int
    @Published var show    : Bool
    
    init(rotation: Double = 1.0, index: Int = 0, show: Bool = false) {
        self.rotation = rotation
        self.index = index
        self.show = show
    }
}
