//
//  ContentView.swift
//  swiftUIApp
//
//  Created by 이빈 on 9/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var food: Int = 0
    @State private var water: Int = 0
    
    var body: some View {
        ZStack {
            Color(red: 166 / 255, green: 218 / 255, blue: 244 / 255).edgesIgnoringSafeArea(.all)
            VStack {
                Text("🤍커비 키우기🤍")
                    .font(.system(size: 36, weight: .bold))
                Text("주먹밥 \(food)개, 물 \(water)잔 먹었어요!")
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 2)

                if food >= 9 {
                    Image("kirby3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280)
                        .padding(.vertical, 40)
                } else if food >= 6 {
                    Image("kirby2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280)
                        .padding(.vertical, 40)
                } else if food >= 3 {
                    Image("kirby1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280)
                        .padding(.vertical, 40)
                } else {
                    Image("kirby0")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 280)
                        .padding(.vertical, 40)
                }
                
                Stepper("🍙 주먹밥 주기", value: $food, in: 0...10)
                    .padding() // 내부 여백
                    .foregroundColor(.black)
                    .font(.system(size: 20, weight: .semibold))
                    .background(Color.white)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                Spacer()
                    .frame(height: 20)
                Stepper("🚰 물 주기", value: $water, in: 0...10)
                    .padding() // 내부 여백
                    .foregroundColor(.black)
                    .font(.system(size: 20, weight: .semibold))
                    .background(Color.white)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
