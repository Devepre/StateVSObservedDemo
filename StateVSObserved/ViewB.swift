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
        VStack {
            Button("Observed Object", action: model.performJob)
                .padding()
            
            HStack {
                Text("Result:")
                Text("\(model.couner)")
            }
            .foregroundColor(model.couner == 0 ? .red : .primary)
        }
    }
}

// MARK: - Preview
struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
