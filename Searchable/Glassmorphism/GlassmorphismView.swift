//
//  GlassmorphismView.swift
//  Searchable
//
//  Created by Oleg Plugaru on 04.01.2024.
//

import SwiftUI

struct GlassmorphismView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.cyan.opacity(0.7), .purple.opacity(0.7)], startPoint: .topLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
            
            Circle()
                .frame(width: 300)
                .foregroundColor(.blue.opacity(0.3))
                .blur(radius: 10)
                .offset(x: -100, y: -150)
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .frame(width: 500, height: 500)
                .foregroundStyle(LinearGradient(colors: [.purple.opacity(0.6), .mint.opacity(0.5)], startPoint: .top, endPoint: .leading))
                .offset(x: 200)
                .blur(radius: 30)
                .rotationEffect(.degrees(30))
            
            Circle()
                .frame(width: 450)
                .foregroundStyle(.pink.opacity(0.6))
                .blur(radius: 20)
                .offset(x: 200, y: -200)
            
            VStack(spacing: 100) {
                HStack {
                    VStack {
                        Text("2")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                        Text("rank".uppercased())
                            .font(.system(size: 12, weight: .regular, design: .rounded))
                    }
                    Spacer()
                    VStack {
                        Text("Nov 3")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                        Text("birthday".uppercased())
                            .font(.system(size: 12, weight: .regular, design: .rounded))
                    }
                    Spacer()
                    VStack {
                        Text("26")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                        Text("years old".uppercased())
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                    }
                }
                .padding()
                .frame(width: 360)
                .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Communication".uppercased())
                        .font(.headline)
                        .padding()
                    HStack(alignment: .top, content: {
                        Text("yeah I tried to go yesterday but they were closed so maybe tommorow idk")
                            .font(.caption)
                            .frame(width: 250, height: 32)
                        Spacer()
                        Text("yesterday")
                            .font(.caption)
                    })
                    .frame(width: .infinity)
                    .padding(.horizontal)
                    
                    HStack {
                        VStack {
                            Text("4.3")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                            Text("avg texts / day".uppercased())
                                .font(.system(size: 12, weight: .regular, design: .rounded))
                        }
                        Spacer()
                        
                        VStack {
                            Text("+19%")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                .foregroundColor(.green)
                            Text("this month".uppercased())
                                .font(.system(size: 12, weight: .regular, design: .rounded))
                        }
                        
                        Spacer()
                        
                        VStack {
                            Text("12 hrs")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                            Text("last spoke".uppercased())
                                .font(.system(size: 12, weight: .regular, design: .rounded))
                        }
                    }
                    .padding()
                }
                .frame(width: 360)
                .foregroundColor(Color.black.opacity(0.8))
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
        }
    }
}

#Preview {
    GlassmorphismView()
}
