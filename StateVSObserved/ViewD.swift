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
        VStack {
            Button("Observed Object shared", action: model.performJob)
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
struct ViewD_Previews: PreviewProvider {
    static var previews: some View {
        ViewD()
    }
}
