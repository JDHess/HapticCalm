//
//  ContentView.swift
//  HapticCalm Watch App
//
//  Created by Julie Hess on 12/29/22.
//

import SwiftUI



struct ContentView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Text("Place your watch on the inside of your wrist.")
                .padding()
            
            Button {
                //code
                self.isAnimating.toggle()
                if isAnimating {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {enum WKHapticType: Int {
                        case Click
                    }
                    }
                }
            }
        label: {
            Text("Press to Start and Stop Heptic Tap")
                .foregroundColor(.green)
        }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

