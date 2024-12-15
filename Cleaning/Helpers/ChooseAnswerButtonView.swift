//
//  ChooseAnswerButtonView.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI

struct ChooseAnswerButtonView: View {
    var label: String
    var triger: Bool
    var colorBack: Color = .pinkLow
    var body: some View {
        HStack{
            ZStack {
                Circle()
                    .frame(height: 24)
                    .foregroundStyle(colorBack)
                if triger {
                    Circle()
                        .frame(height: 14)
                        .foregroundStyle(.pinkHight)
                }
            }
            Text(label)
                .foregroundStyle(.black)
                .font(.system(size: 14))
                .minimumScaleFactor(0.5)
        }.animation(.easeInOut, value: triger)
    }
}

#Preview {
    ChooseAnswerButtonView(label: "Facebook", triger: false)
}
