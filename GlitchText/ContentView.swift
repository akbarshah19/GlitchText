//
//  ContentView.swift
//  GlitchText
//
//  Created by Akbarshah Jumanazarov on 6/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var trigger: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                GlitchText(text: "Hello Guys!", trigger: trigger) {
                   LinearKeyframe(
                    GlitchFrame(top: -5, center: 0, bottom: 0, shadowOpacity: 0.2),
                    duration: 0.1
                   )
                    LinearKeyframe(
                        GlitchFrame(top: -5, center: -5, bottom: -5, shadowOpacity: 0.6),
                     duration: 0.1
                    )
                    LinearKeyframe(
                        GlitchFrame(top: -5, center: -5, bottom: 5, shadowOpacity: 0.8),
                     duration: 0.1
                    )
                    LinearKeyframe(
                        GlitchFrame(top: 5, center: 5, bottom: 5, shadowOpacity: 0.1),
                     duration: 0.1
                    )
                    LinearKeyframe(
                        GlitchFrame(top: 5, center: 0 , bottom: 5, shadowOpacity: 0.5),
                     duration: 0.1
                    )
                    LinearKeyframe(
                        GlitchFrame(),
                     duration: 0.1
                    )
                }
                .font(.system(size: 60, weight: .semibold))
                
                GlitchText(text: "Hello Guys!", trigger: trigger, shadow: .green) {
                   LinearKeyframe(
                    GlitchFrame(top: 5, center: 5, bottom: 0, shadowOpacity: 0.4),
                    duration: 0.1
                   )
                    LinearKeyframe(
                        GlitchFrame(top: 5, center: -5, bottom: -5, shadowOpacity: 0.2),
                     duration: 0.1
                    )
                    LinearKeyframe(
                        GlitchFrame(top: -5, center: 5, bottom: 5, shadowOpacity: 0.3),
                     duration: 0.1
                    )
                    LinearKeyframe(
                        GlitchFrame(top: 5, center: -5, bottom: 5, shadowOpacity: 0.6),
                     duration: 0.1
                    )
                    LinearKeyframe(
                        GlitchFrame(top: 0, center: 5, bottom: 0, shadowOpacity: 0.9),
                     duration: 0.1
                    )
                    LinearKeyframe(
                        GlitchFrame(),
                     duration: 0.1
                    )
                }
                .font(.system(size: 60, weight: .semibold))
            }
            
            Button {
                trigger.toggle()
            } label: {
                Text("Trigger")
                    .padding(.horizontal)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .tint(.black)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
