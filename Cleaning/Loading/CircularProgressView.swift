//
//  Untitled.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI

struct CircularProgressView: View {
    @State private var rotationAngle: Double = 0

    var body: some View {
        ZStack {
            // Линия круга
            Circle()
                .stroke(lineWidth: 4)
                .foregroundStyle(.pinkLow) // Цвет и прозрачность линии

            // Круг, который вращается
            Circle()
                .foregroundStyle(.pinkHight) // Цвет круга
                .frame(width: 17) // Размер круга
                .offset(y: -27) // Смещение круга по радиусу
                .rotationEffect(.degrees(rotationAngle)) // Угол вращения
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false), value: rotationAngle)
        }
        .frame(width: 55, height: 55) // Размер всей вью
        .onAppear {
            rotationAngle = 360 // Запуск вращения
        }
    }
}

#Preview {
    CircularProgressView()
}
