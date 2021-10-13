//
//  ViewA.swift
//  StateVSObserved
//
//  Created by Serhii Kyrylenko on 13.10.2021.
//

import SwiftUI

struct ViewB: View {
    @ObservedObject private var model = ViewModel()
    
    var body: some View {
        ActualView(model: model, text: "Observed Object")
    }
}

// MARK: - Preview
struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
