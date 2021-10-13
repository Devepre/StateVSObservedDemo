//
//  ViewModel.swift
//  StateVSObserved
//
//  Created by Serhii Kyrylenko on 13.10.2021.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var couner: Int = 0
    
    func performJob() {
        couner += 1
    }
    
    static let shared = ViewModel()
}
