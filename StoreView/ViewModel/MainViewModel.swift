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
    
    init(rotation: Double, index: Int, show: Bool) {
        self.rotation = rotation
        self.index = index
        self.show = show
    }
    
    func repeatAnimationPerson() {
        if  self.rotation == 1.0 {
            self.rotation += 360
            DispatchQueue.main.asyncAfter(deadline: .now() + 15.1) {
                self.rotation -= 360
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
            self.repeatAnimationPerson()
        }
    }
}
