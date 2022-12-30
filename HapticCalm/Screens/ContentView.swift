//
//  ContentView.swift
//  Zen Motion
//
//  Created by Julie Hess on 12/23/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnbordingViewActive: Bool = true
    
    var body: some View {
        ZStack{
            if isOnbordingViewActive {
                OnbordingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
