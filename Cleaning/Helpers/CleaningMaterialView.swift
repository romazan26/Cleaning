//
//  PaperMaterialView.swift
//  Tiger2
//
//  Created by Роман on 03.12.2024.
//

import SwiftUI

struct CleaningMaterialView: View {
    @State private var isPaperMaterialExpanded = false
    @Binding var selectedCleaningMaterial: TypeMaterial

       var body: some View {

               DisclosureGroup(
                   isExpanded: $isPaperMaterialExpanded,
                   content: {
                       LazyVGrid(columns: [GridItem(),GridItem(),GridItem()],alignment: .leading, content: {
                           ForEach(TypeMaterial.allCases , id: \.self) { material in
                               Button {
                                   selectedCleaningMaterial = material
                               } label: {
                                   ChooseAnswerButtonView(label: material.rawValue,
                                                          triger: selectedCleaningMaterial == material,
                                                          colorBack: .white)
                               }
                           }
                       })
                               
                               
                          
                        
                   },
                   label: {
                       HStack {
                           Text("Cleaning material")
                               .bold()
                           Spacer()
                       }
                   }
               )
               .foregroundStyle(.black)
               

    
       }
}

#Preview {
    CleaningMaterialView(selectedCleaningMaterial: .constant(.Flock))
}
