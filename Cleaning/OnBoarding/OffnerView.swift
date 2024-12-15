//
//  OffnerView.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI

struct OffnerView: View {
    @StateObject var vm: IntroViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(.cleaning)
                    .resizable()
                    .frame(width: 140, height: 157)
                Spacer()
            }
            VStack(alignment: .leading){
                Text("How often do you do the cleaning?")
                    .foregroundStyle(.black)
                    .font(.system(size: 24, weight: .bold))
                    .frame(maxWidth: 238)
                
                LazyVGrid(columns: [GridItem(), GridItem()], alignment: .leading, content: {
                    Button {
                        vm.ofner = "Every day"
                    } label: {
                        ChooseAnswerButtonView(label: "Every day", triger: vm.ofner == "Every day")
                    }
                    Button {
                        vm.ofner = "2-3 times a weak"
                    } label: {
                        ChooseAnswerButtonView(label: "2-3 times a weak", triger: vm.ofner == "2-3 times a weak")
                    }
                    Button {
                        vm.ofner = "1 time per week"
                    } label: {
                        ChooseAnswerButtonView(label: "1 time per week", triger: vm.ofner == "1 time per week")
                    }
                    Button {
                        vm.ofner = "Other"
                    } label: {
                        ChooseAnswerButtonView(label: "Other", triger: vm.ofner == "Other")
                    }
                })
                
            }
            
            
        }
        .padding()
        .onDisappear {
            vm.updateUser()
        }
    }
}

#Preview {
    OffnerView(vm: IntroViewModel())
}
