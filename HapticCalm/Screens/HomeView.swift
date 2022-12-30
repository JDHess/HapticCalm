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
            Text(":: HapticCalm ::").font(.largeTitle)
            Text("This app was designed with a since of calm in mind. Tilt your phone slightly to relax. A glowing fidget orb will roll across your screen.").padding()
            Text(":: Watch App ::").font(.largeTitle)
            Text("Download the app onto your Apple Watch. Place the watch face on the inside of your wrist and press the button. The watch will tap your wrist. This stimulates a pressurepoint known to calm anxiety, and reduce motion sickness. The constant tapping may decrease your watch's battery life when used for extended periods of time.")
                .padding()
            
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

