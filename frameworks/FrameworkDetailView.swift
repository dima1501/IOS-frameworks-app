//
//  FrameworkDetailView.swift
//  frameworks
//
//  Created by Dima Voropaev on 04.12.2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isSelectedFramework: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
           
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isSelectedFramework: .constant(false))
}
