//
//  ViewD.swift
//  StateVSObserved
//
//  Created by Serhii Kyrylenko on 13.10.2021.
//

import SwiftUI

struct ViewD: View {
    @ObservedObject private var model = ViewModel.shared
    
    var body: some View {
        ActualView(model: model, text: "Observed Object shared")
    }
}

// MARK: - Preview
struct ViewD_Previews: PreviewProvider {
    static var previews: some View {
        ViewD()
    }
}
