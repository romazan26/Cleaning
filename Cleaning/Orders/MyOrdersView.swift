//
//  MyOrdersView.swift
//  Tiger2
//
//  Created by Роман on 04.12.2024.
//
import SwiftUI

struct MyOrdersView: View {
    @StateObject var vm: MainViewModel
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack{
                //MARK: - User info
                VStack(alignment: .leading, spacing: 10) {
                    Text(vm.user?.name ?? "")
                    HStack {
                        Text("My orders")
                            .font(.system(size: 20))
                        Spacer()
                    }
                    
                }
                .foregroundStyle(.black)
                
                //MARK: - Order list
                ScrollView {
                    if vm.orders.isEmpty {
                        VStack(alignment: .leading) {
                            Text("Your order has been delivered, your photos will be ready soon.")
                                .font(.system(size: 20))
                                .foregroundStyle(.black)
                            Button {
                               dismiss()
                            } label: {
                                CustomButtonView(label: "New Order")
                            }

                        }
                    }else{
                        ForEach(vm.orders) { order in
                            OrderCellView(order: order, vm: vm)
                        }
                    }
                    
                }
            }.padding()
        }
    }
}

#Preview {
    MyOrdersView(vm: MainViewModel())
}
