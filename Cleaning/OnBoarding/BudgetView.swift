//
//  BudgetView.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI

struct BudgetView: View {
    @StateObject var vm: IntroViewModel
    @FocusState var isFocused: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(.cleaningImage3)
                    .resizable()
                    .frame(width: 110, height: 186)
                Spacer()
            }
            
            Text("What is your cleaning budget?")
                .foregroundStyle(.black)
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: 238)
            
            TextField("100 $", text: $vm.budget)
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
    BudgetView(vm: IntroViewModel())
}
