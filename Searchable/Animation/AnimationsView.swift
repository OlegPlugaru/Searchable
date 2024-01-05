//
//  AnimationsView.swift
//  Searchable
//
//  Created by Oleg Plugaru on 05.01.2024.
//

import SwiftUI

struct AnimationsView: View {
    @State private var isChecked = false
    @State private var animatingCircle = false
    @State private var animatingButton = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            // list cell
            VStack(spacing: 50) {
                HStack {
                    Text("Hello Word")
                        .bold()
                        .opacity(isChecked ? 1.0 : 0.5)
                    Spacer()
                    Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
                        .font(.system(size: 24))
                        .scaleEffect(isChecked ? 1.25 : 1.0)
                        .foregroundColor(isChecked ? .green : .black)
                        .padding()
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                isChecked.toggle()
                            }
                        }
                }
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            .padding(.horizontal)
            
            
            // shape with spring
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.linearGradient(colors: [.cyan, .green], startPoint: .topTrailing, endPoint: .bottomLeading))
                    .offset(x: animatingCircle ? 30 : 0, y: animatingCircle ? -100 : 0)
                    .scaleEffect(animatingCircle ? 2.0 : 1.0)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.9, dampingFraction: 0.1, blendDuration: 0)) {
                            animatingCircle.toggle()
                        }
                    }
                
                // button example
                Button {
                    withAnimation(.easeInOut(duration: 1).repeatCount(2)) {
                        animatingButton.toggle()
                    }
                } label: {
                    Text("Animate")
                        .bold()
                        .frame(width: 200, height: 50)
                        .foregroundColor(.indigo)
                        .background(LinearGradient(colors: [.mint, .white], startPoint: .bottomLeading, endPoint: .topTrailing))
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        .shadow(radius: 3)
                        .opacity(animatingButton ? 1.0 : 0.7)
                        .scaleEffect(animatingButton ? 1.5 : 1.0)
                }
            }
        }
    }
}

#Preview {
    AnimationsView()
}
