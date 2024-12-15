//
//  IntroView.swift
//  FastTrack
//
//  Created by Роман on 12.08.2024.
//

import SwiftUI

struct IntroView: View {
    @StateObject var vm = IntroViewModel()
    
    @Environment(\.dismiss) var dismiss
    
    
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            //MARK: - BackGround
            PurpleGradientView().ignoresSafeArea()
                 
            VStack{
                switch vm.pageIndex {
                case 0: WelcomView(vm: vm)
                case 1: AboutAsView(vm: vm)
                case 2: OffnerView(vm: vm)
                case 3: TimeView(vm: vm)
                case 4: BudgetView(vm: vm)
                
                default: RoomView(vm: vm)
                }
                    
                
                
                //MARK: - Navigation Button
                Button(action: {
                    vm.nextPage()
                }, label: {
                    CustomButtonView()
                    
                })
                .padding()
            }
            .animation(.easeInOut, value: vm.pageIndex)
            
            
        }
        .fullScreenCover(isPresented: $vm.isPresented, content: {
            MainView()
        })
    }
    
}

#Preview {
    IntroView()
}

