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
            Color.backgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Text("🤍커비 키우기🤍")
                    .font(.system(size: 36, weight: .bold))
                Text("주먹밥 \(food)개, 물 \(water)잔 먹었어요!")
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.gray.opacity(0.3), radius: 10, x: 0, y: 2)
                kirbyImageView(food: food)
                CustomStepper(title: "🍙 주먹밥 주기", value: $food, range: 0...10)
                Spacer().frame(height: 20)
                CustomStepper(title: "🚰 물 주기", value: $water, range: 0...10)
            }
        }
    }
}

extension Color {
    static let backgroundColor = Color(red: 166 / 255, green: 218 / 255, blue: 244 / 255)
}

struct kirbyImageView: View {
    let food: Int
    
    var body: some View {
        let imageName: String
        
        switch food {
        case 9...:
            imageName = "kirby3"
        case 6..<9:
            imageName = "kirby2"
        case 3..<6:
            imageName = "kirby1"
        default:
            imageName = "kirby0"
        }
        
        return Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 280)
            .padding(.vertical, 40)
    }
}

struct CustomStepper: View {
    let title: String
    @Binding var value: Int
    let range: ClosedRange<Int>
    
    var body: some View {
        Stepper(title, value: $value, in: range)
            .padding()
            .foregroundColor(.black)
            .font(.system(size: 20, weight: .semibold))
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal, 20)
            .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    ContentView()
}
