//
//  LoginView.swift
//  MoviePi
//
//  Created by Jose Luna on 5/4/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var emailText: String = ""
    @State private var passwordText: String = ""
    
    var body: some View {
        ZStack {
            WaveShape(color: .white)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Group {
                    HStack {
                        Image(systemName: "envelope")
                        
                        TextField("Email", text: $emailText)
                        
                        Image(systemName: "checkmark.circle")
                    }
                    
                    Divider()
                        .frame(maxHeight: 40)
                }
                .padding(.horizontal)
                
                Group {
                    HStack {
                        Image(systemName: "lock.circle")
                        
                        SecureField("Password", text: $passwordText)
                        
                        Image(systemName: "eye")
                    }
                    
                    Divider()
                        .frame(maxHeight: 40)
                }
                .padding(.horizontal)
                
                Button {
                    
                } label: {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.white)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue)
                        .padding(.horizontal)
                )
                .padding(.bottom, 30)
            }
        }
        .background(.blue)
    }
}

private struct WaveShape: View {
    
    let color: Color
    let curveHeight: CGFloat = 100
    
    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { context, size in
                let time = timeline.date.timeIntervalSince1970
                let angle = time.remainder(dividingBy: 1)
                let offset = size.width * angle
                
                context.translateBy(x: offset, y: 0)
                context.fill(wavePath(size), with: .color(color))
                context.translateBy(x: -size.width, y: 0)
                context.fill(wavePath(size), with: .color(color))
                context.translateBy(x: size.width * 2, y: 0)
                context.fill(wavePath(size), with: .color(color))
            }
        }
    }
    
    private func wavePath(_ size: CGSize) -> Path {
        let midHeight = size.height * 0.4
        let midWidth = size.width * 0.5
        
        return Path { path in
            path.move(to: CGPoint(x: 0, y: midHeight))
            path.addCurve(to: CGPoint(x: size.width, y: midHeight),
                          control1: CGPoint(x: midWidth, y: midHeight + curveHeight),
                          control2: CGPoint(x: midWidth, y: midHeight - curveHeight))
            path.addLine(to: CGPoint(x: size.width, y: size.height))
            path.addLine(to: CGPoint(x: 0, y: size.height))
        }
    }
}

#Preview {
    LoginView()
}
