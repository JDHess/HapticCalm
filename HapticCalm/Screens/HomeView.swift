//
//  HomeView.swift
//  HapticCalm
//
//  Created by Julie Hess on 12/30/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnbordingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing:  20) {
            Text("Home").font(.largeTitle)
            Button(action:{
                isOnbordingViewActive = true
                //some action
            }){
                Text("Home")
            }
        }
    }
}
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }

