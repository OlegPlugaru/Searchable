//
//  GameBoyView.swift
//  Searchable
//
//  Created by Oleg Plugaru on 05.01.2024.
//

import SwiftUI

struct GameBoyView: View {
    @State var currentBackgroundColor = Color("highlightGreen")
    private var backgroundColors = [Color("highlightGreen"), Color.red, Color.indigo, Color.cyan, Color.gray, Color.blue, Color.mint, Color.green, Color.orange]
    var body: some View {
        ZStack {
            currentBackgroundColor
                .ignoresSafeArea()
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 350, height: 350)
                    VStack {
                        Spacer()
                        HStack {
                            VStack {
                                HStack(spacing: 2) {
                                    Circle()
                                        .frame(width: 8, height: 8)
                                        .foregroundColor(.white.opacity(0.25))
                                    
                                    Image(systemName: "wave.3.right")
                                        .foregroundColor(.white.opacity(0.25))
                                }
                                Text("POWER")
                                    .font(.system(size: 12))
                                    .foregroundColor(.white.opacity(0.5))
                                    .padding(.leading, 4)
                            }
                            Spacer()
                        }
                        Spacer()
                        HStack(alignment: .center, spacing: 8) {
                            Text("GAME BOY")
                                .font(.custom("Futura Medium Italic", size: 20))
                                .foregroundColor(.white.opacity(0.7))
                        }
                        .padding(.bottom)
                        
                    }
                    .frame(width: 350, height: 350)
                    
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                        .foregroundColor(.white.opacity(0.5))
                        .frame(width: 240, height: 230)
                    
                    Text("SUBSCRIBE")
                        .font(.custom("Retro Gaming", size: 20))
                        .foregroundColor(.black.opacity(0.75))
                }
                Text("Nintento")
                    .font(.custom("Retro Gaming", size: 12))
                    .foregroundColor(.black.opacity(0.3))
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.black.opacity(0.25), lineWidth: 0.5)
                            .frame(width: 120, height: 30)
                    )
                HStack {
                    Image(systemName: "circle.grid.cross.fill")
                        .font(.system(size: 100))
                        .foregroundColor(.black.opacity(0.8))
                        .padding(.leading)
                    Spacer()
                    Text("B")
                        .font(.custom("Retro Gaming", size: 24))
                        .foregroundColor(.black.opacity(0.5))
                        .background(
                            Circle()
                                .foregroundColor(.black.opacity(0.75))
                                .frame(width: 40, height: 40)
                        )
                        .offset(x: -30, y: 30)
                    Text("A")
                        .font(.custom("Retro Gaming", size: 24))
                        .foregroundColor(.black.opacity(0.75))
                        .background(
                            Circle()
                                .foregroundColor(.black.opacity(0.75))
                                .frame(width: 40, height: 40)
                        )
                        .padding(.trailing, 40)
                        .onTapGesture {
                            if let random = backgroundColors.randomElement() {
                                withAnimation(.easeInOut(duration: 1)) {
                                    currentBackgroundColor = random
                                }
                            }
                        }
                }
                HStack {
                    VStack {
                        Ellipse()
                            .frame(width: 50, height: 10)
                            .foregroundColor(.black.opacity(0.9))
                        
                        Text("select".uppercased())
                            .font(.custom("Retro Gaming", size: 12))
                            .foregroundColor(.black.opacity(0.3))
                    }
                    VStack {
                        Ellipse()
                            .frame(width: 50, height: 10)
                            .foregroundColor(.black.opacity(0.9))
                        Text("start".uppercased())
                            .font(.custom("Retro Gaming", size: 12))
                            .foregroundColor(.black.opacity(0.3))
                    }
                }
                .padding(.top, 50)
            }
        }
    }
}

#Preview {
    GameBoyView()
}
