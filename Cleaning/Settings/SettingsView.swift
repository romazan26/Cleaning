//
//  SettingsView.swift
//  Cleaning
//
//  Created by Роман on 15.12.2024.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var isPresentPolicy = false
    @State var urlPolicy = "https://www.apple.com/app-store/"
    
    var body: some View {
        
        VStack(spacing: 20){
            
            
            //MARK: - Rate App Button
            Button {
                SKStoreReviewController.requestReview()
            } label: {
                HStack{
                    Text("Rate the app")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            }
            
            //MARK: - Privacy button
            Button(action: {isPresentPolicy.toggle()}, label: {
                HStack{
                    Text("Privacy policy")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            })
            Spacer()
        }
        .font(.system(size: 16))
        .padding()
        .foregroundStyle(.black)
        .sheet(isPresented: $isPresentPolicy, content: {
            WebViewPage(urlString: URL(string: urlPolicy)!)
        })
    }
}



struct ShareSheet: UIViewControllerRepresentable{
    var items: String
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let av = UIActivityViewController(activityItems: [items], applicationActivities: nil)
        return av
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}



#Preview {
    SettingsView()
}
