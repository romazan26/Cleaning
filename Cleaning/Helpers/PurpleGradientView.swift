//
//  purpleGradient.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI

struct PurpleGradientView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.pinkHight, Color.white]), startPoint: .top, endPoint: .center).opacity(0.5)
    }
}

#Preview {
    PurpleGradientView()
}
