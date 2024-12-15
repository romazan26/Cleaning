//
//  TimeView.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI

struct TimeView: View {
    @StateObject var vm: IntroViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(.cleaningImage2)
                    .resizable()
                    .frame(width: 110, height: 190)
                Spacer()
            }
            VStack(alignment: .leading){
                Text("How much time do you spend cleaning?")
                    .foregroundStyle(.black)
                    .font(.system(size: 24, weight: .bold))
                    .frame(maxWidth: 238)
                
                LazyVGrid(columns: [GridItem(), GridItem()], alignment: .leading, content: {
                    Button {
                        vm.time = "Half an hour"
                    } label: {
                        ChooseAnswerButtonView(label: "Half an hour", triger: vm.time == "Half an hour")
                    }
                    Button {
                        vm.time = "1 hour"
                    } label: {
                        ChooseAnswerButtonView(label: "1 hour", triger: vm.time == "1 hour")
                    }
                    Button {
                        vm.time = "2-3 hours"
                    } label: {
                        ChooseAnswerButtonView(label: "2-3 hours", triger: vm.time == "2-3 hours")
                    }
                    Button {
                        vm.time = "Other"
                    } label: {
                        ChooseAnswerButtonView(label: "Other", triger: vm.time == "Other")
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
    TimeView(vm: IntroViewModel())
}
