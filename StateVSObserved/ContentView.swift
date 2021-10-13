//
//  ContentView.swift
//  StateVSObserved
//
//  Created by Serhii Kyrylenko on 13.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isCool: Bool = false
    @State private var isRegularOn: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.green, Color.blue]),
                           center: .bottomLeading,
                           startRadius: 50, endRadius: 800)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.3)
            
            VStack {
                HStack(alignment: .lastTextBaseline) {
                    ViewB()
                    Divider()
                    ViewC()
                    Divider()
                    ViewD()
                }
                .padding(.bottom)
                .multilineTextAlignment(.center)
                .frame(maxHeight: 140)
                
                Toggle("Regular toggle:", isOn: $isRegularOn)
                    .padding(.horizontal)
                
                Toggle("Tricky toggle:", isOn: $isCool)
                    .opacity(isCool ? 1 : 0.5)
                    .padding(.horizontal)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.blue)
                    .opacity(0.2)
                    .shadow(color: .black, radius: 20)
            )
            .padding()
        }
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
