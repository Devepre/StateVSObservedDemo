//
//  ActualView.swift
//  StateVSObserved
//
//  Created by Serhii Kyrylenko on 13.10.2021.
//

import SwiftUI

struct ActualView: View {
    /// Also try to use here StateObject instead of ObservedObject....
    @ObservedObject var model: ViewModel
    
    let text: String
    
    var body: some View {
        VStack {
            Button(text, action: model.performJob)
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
struct ActualView_Previews: PreviewProvider {
    static var model = ViewModel()
    static var previews: some View {
        ActualView(model: model, text: "Text")
    }
}
