//
//  RoomView.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI

struct RoomView: View {
    @StateObject var vm: IntroViewModel
    @FocusState var isFocused: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(.cleaningImage4)
                    .resizable()
                    .frame(width: 140, height: 204)
                Spacer()
            }
            
            Text("How many rooms do you have in your house?")
                .foregroundStyle(.black)
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: 238)
            
            TextField("3", text: $vm.room)
                .focused($isFocused)
                .padding(8)
                .frame(height: 54)
                .background {
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundStyle(.pinkLow)
                }
        }
        .onTapGesture {
            isFocused = false
        }
        .padding()
        .onDisappear {
            vm.updateUser()
        }
    }
}

#Preview {
    RoomView(vm: IntroViewModel())
}
