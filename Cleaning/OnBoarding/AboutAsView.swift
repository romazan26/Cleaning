//
//  EntityUserview.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct AboutAsView: View {
    @StateObject var vm: IntroViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(.welcom)
                    .resizable()
                    .frame(width: 160, height: 174)
                Spacer()
            }
            VStack{
                Text("How did you find out about us?")
                    .foregroundStyle(.black)
                    .font(.system(size: 24, weight: .bold))
                
                
                LazyVGrid(columns: [GridItem(), GridItem()], alignment: .leading, content: {
                    Button {
                        vm.findAboutAs = "Instagram"
                    } label: {
                        ChooseAnswerButtonView(label: "Instagram", triger: vm.findAboutAs == "Instagram")
                    }
                    Button {
                        vm.findAboutAs = "YouTube"
                    } label: {
                        ChooseAnswerButtonView(label: "YouTube", triger: vm.findAboutAs == "YouTube")
                    }
                    Button {
                        vm.findAboutAs = "Facebook"
                    } label: {
                        ChooseAnswerButtonView(label: "Facebook", triger: vm.findAboutAs == "Facebook")
                    }
                    Button {
                        vm.findAboutAs = "Twitter"
                    } label: {
                        ChooseAnswerButtonView(label: "Twitter", triger: vm.findAboutAs == "Twitter")
                    }
                    Button {
                        vm.findAboutAs = "Google"
                    } label: {
                        ChooseAnswerButtonView(label: "Google", triger: vm.findAboutAs == "Google")
                    }
                    Button {
                        vm.findAboutAs = "Other"
                    } label: {
                        ChooseAnswerButtonView(label: "Other", triger: vm.findAboutAs == "Other")
                    }
                })
                
            }.frame(maxWidth: 238)
            
            
        }
        .padding()
        .onDisappear {
            vm.updateUser()
        }
    }
}

#Preview {
    AboutAsView(vm: IntroViewModel())
}
