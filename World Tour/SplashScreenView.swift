//
//  SplashScreenView.swift
//  World Tour
//
//  Created by Min Thu Khine on 11/30/23.
//
import SwiftUI

struct SplashScreenView: View {
    
    // Initial Animation States
    @State var isActive = false
    @State var rotation = 0.0
    @State var scaleXY = 1.0
    @State var positionX = -150
    @State var objectColor = Color(#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1))
    
    
    var body: some View {
        
        if isActive {
            CountryView()
        } else {
            Rectangle()
                .fill(objectColor)
                .frame(width: 50, height: 50)
                .rotationEffect(.degrees(rotation))
                .scaleEffect(CGFloat(scaleXY))
                .offset(x: CGFloat(positionX))
                .animation(Animation.easeInOut(duration: 3).repeatForever(autoreverses: true).speed(4))
                .onAppear() {
                
                    // Final Animation States
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        self.isActive = true
                    }
                    rotation += 360
                    scaleXY += 1.1
                    positionX += 250
                    objectColor = Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1))
                    
                }
        }
            
    }
}

#Preview {
    SplashScreenView()
}
