//
//  OnbordingView.swift
//  HapticCalm
//
//  Created by Julie Hess on 12/30/22.
//

import SwiftUI

struct OnbordingView: View {
    @State private var particleSystem = ParticleSystem()
    @State private var motionHandler = MotionManager()
    @AppStorage("onboarding") var isOnbordingViewActive: Bool = true
    
    
    var body: some View {
        ZStack{
        TimelineView(.animation){ timeline in
            Canvas {context, size in
                //drawing code here
                let timelineData = timeline.date.timeIntervalSinceReferenceDate
                particleSystem.update(date: timelineData)
                context.blendMode = .plusLighter
                
                particleSystem.center = UnitPoint(x: 0.5 + motionHandler.roll, y: 0.5 + motionHandler.pitch)
                
                //MARK: Change color
                
                for particle in particleSystem.particles {
                    let xPos = particle.x * size.width
                    let yPos = particle.y * size.height
                    var contextCopy = context
                    contextCopy.addFilter(.colorMultiply(Color(hue: particle.hue, saturation: 1, brightness: 1)))
                    contextCopy.opacity = 1-(timelineData - particle.creationDate)
                    contextCopy.draw(particleSystem.image, at: CGPoint(x: xPos, y: yPos))
                }
            }
            .gesture(
                DragGesture(minimumDistance: 0).onChanged{drag in
                    particleSystem.center.x = drag.location.x / UIScreen.main.bounds.width
                    particleSystem.center.y = drag.location.y / UIScreen.main.bounds.height
                })
            .ignoresSafeArea()
            .background(.black)
            
                VStack(spacing:20){
                Button(action: {
                    isOnbordingViewActive = false
                }){
                    Text("Info")
                }
            }
            }
        }
    }
}

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}
