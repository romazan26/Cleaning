//
//  MainView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var vm = MainViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                VStack {
                    //MARK: - User name
                    HStack(spacing: 20) {
                        Text(vm.user?.name ?? "no user name")
                            .foregroundStyle(.black)
                            .font(.headline)
                        
                        Spacer()
                        
                        //MARK: - Setting button
                        NavigationLink {
                            SettingsView()
                        } label: {
                            Image(systemName: "gearshape")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.black)
                        }

                        
                        //MARK: - Order button
                        NavigationLink {
                            MyOrdersView(vm: vm)
                        } label: {
                            Image(systemName: "basket")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(.black)
                        }

                    }
                    .padding(.vertical)
                    ScrollView {
                            LazyVGrid(columns: [GridItem(), GridItem()]) {
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .carpet
                                    }
                                } label: {
                                    LabelTypeCleaningView(cleaningType: .carpet)
                                }
                                
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .safa
                                    }
                                } label: {
                                    LabelTypeCleaningView(cleaningType: .safa)
                                }
                                
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .plumbing
                                    }
                                } label: {
                                    LabelTypeCleaningView(cleaningType: .plumbing)
                                }
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .window
                                    }
                                } label: {
                                    LabelTypeCleaningView(cleaningType: .window)
                                }
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .kitchen
                                    }
                                } label: {
                                    LabelTypeCleaningView(cleaningType: .kitchen)
                                }
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .bathroom
                                    }
                                } label: {
                                    LabelTypeCleaningView(cleaningType: .bathroom)
                                }
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .furniture
                                    }
                                } label: {
                                    LabelTypeCleaningView(cleaningType: .furniture)
                                }
                                NavigationLink {
                                    AddOrderView(vm: vm).onAppear {
                                        vm.simpleOrderType = .stainRemover
                                    }
                                } label: {
                                    LabelTypeCleaningView(cleaningType: .stainRemover)
                                }
                            }
                        }
                    
                }.padding()
            }
        }
    }
}

#Preview {
    MainView()
}
