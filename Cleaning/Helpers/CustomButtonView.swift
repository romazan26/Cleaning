//
//  CustomButtonView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct CustomButtonView: View {
    var color: Color = .pinkHight
    var label: String = "Continue"
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)
                .foregroundStyle(color)
            Text(label)
                .foregroundStyle(.white)
                .font(.system(size: 16,weight: .bold))
        }.frame(height: 54)
    }
}

#Preview {
    CustomButtonView()
}
