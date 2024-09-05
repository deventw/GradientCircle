//
//  ContentView.swift
//  GradientCircle
//
//  Created by deven on 15/7/2024.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var rotation1: Double = 0
    @State private var rotation2: Double = 0
    @State private var rotation3: Double = 0
    
    var circleSize: CGFloat = 300
    var colorCenterOpacity: CGFloat = 0.8
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                .fill(.white)
                .frame(width: circleSize, height: circleSize)
                
                RadialGradient(
                    gradient: Gradient(colors: [.red.opacity(colorCenterOpacity), .clear]),
                    center: .center,
                    startRadius: 0,
                    endRadius: circleSize / 2
                )
                .frame(width: circleSize, height: circleSize)
                .clipShape(Circle())
                .offset(x: circleSize/5, y: circleSize/5)
                .rotationEffect(.degrees(rotation1))
                .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false), value: rotation1)
                .onAppear {
                    rotation1 = 360
                }
                
                
                
                RadialGradient(
                    gradient: Gradient(colors: [.yellow.opacity(colorCenterOpacity), .clear]),
                    center: .center,
                    startRadius: 0,
                    endRadius: circleSize / 2
                )
                .frame(width: circleSize, height: circleSize)
                .clipShape(Circle())
                .offset(x: circleSize/5, y: circleSize/5)
//                .overlay(
//                    
//                    Text("Cicle 2")
//                )
                .rotationEffect(.degrees(rotation2))
                .animation(Animation.linear(duration: 10).repeatForever(autoreverses: false), value: rotation2)
                .onAppear {
                    rotation2 = -360
                }
                
                RadialGradient(
                    gradient: Gradient(colors: [.blue.opacity(colorCenterOpacity), .clear]),
                    center: .center,
                    startRadius: 0,
                    endRadius: circleSize / 2
                )
                .frame(width: circleSize, height: circleSize)
                .clipShape(Circle())
                .offset(x: circleSize/5, y: circleSize/5)
//                .overlay(
//                    
//                    Text("Cicle 3")
//                )
                .rotationEffect(.degrees(rotation3))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: rotation3)
                .onAppear {
                    rotation3 = 360
                }
//   
                    
            }
            .frame(width: circleSize, height: circleSize)
            .blur(radius: 4)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(.white, lineWidth: 4)
            )
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.gray)

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
