//
//  OrderCellView.swift
//  Tiger2
//
//  Created by Роман on 04.12.2024.
//

import SwiftUI

struct OrderCellView: View {
    let order: Order
    @StateObject var vm: MainViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            //MARK: - name
            HStack {
                Text(order.name ?? "")
                    .font(.system(size: 20,weight: .bold))
                Spacer()
                Button {
                    vm.deleteOrder(order)
                } label: {
                    Image(systemName: "trash")
                        .foregroundStyle(.red)
                }

            }
            //MARK: - type
            Text(order.type ?? "")
                .font(.system(size: 14))
            //MARK: - date
            Text(Dateformatter(date: order.date ?? Date()))
                .font(.system(size: 12))
            //MARK: - material
            HStack {
                Text("Cleaning material")
                    .font(.system(size: 12))
                Spacer()
                Text(order.material ?? "")
                    .font(.system(size: 14))
                    
            }
        
            //MARK: - number of copies
            HStack {
                Text("Cleaning items")
                    .font(.system(size: 12))
                Spacer()
                Text("\(order.cleaningItem)")
                    .font(.system(size: 14))
                    
            }
            
        }
        .foregroundStyle(.black)
        .padding(8)
        .background {
            Color.pinkLow.cornerRadius(8)
        }
    }
    //MARK: - Dateformatter
    private func Dateformatter(date: Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d.M.yyyy"
        return dateFormatter.string(from: date)
    }

}

//#Preview {
//    OrderCellView(order: Order(), vm: MainViewModel())
//}
