//
//  LoadingView.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI

struct LoadingView: View {
    @StateObject var vm = LoadingViewModel()
    var body: some View {
        ZStack {
            PurpleGradientView().ignoresSafeArea()
            VStack(spacing: 40) {
                Spacer()
                Image(.logo)
                    .resizable()
                    .frame(width: 90, height: 90)
                
                CircularProgressView()
                
            }.padding()
        }.onAppear {
            vm.starttimer()
        }
        .fullScreenCover(isPresented: $vm.isPresent) {
            if vm.isFirstLaunch ?? true {
                IntroView()
            }else{
                MainView()
            }
        }
    }
}

#Preview {
    LoadingView()
}
