//
//  ViewC.swift
//  StateVSObserved
//
//  Created by Serhii Kyrylenko on 13.10.2021.
//

import SwiftUI

struct ViewC: View {
    @StateObject private var model = ViewModel()
    
    var body: some View {
        ActualView(model: model, text: "State Object")
    }
}

// MARK: - Preview
struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
