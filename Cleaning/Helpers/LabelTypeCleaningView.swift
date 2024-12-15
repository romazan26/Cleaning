//
//  LabelTypeCleaningView.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI

struct LabelTypeCleaningView: View {
    var cleaningType: TypeOrder
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Color(UIColor(cleaningType.color))
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Image(cleaningType.icon)
                    .resizable()
                    .frame(width: 34, height: 34)
                Text(cleaningType.name)
                    
            }
            .foregroundStyle(.white)
            .padding()
        }.frame(minHeight: 124)
    }
}

#Preview {
    LabelTypeCleaningView(cleaningType: .carpet)
}
