//
//  XDismissButton.swift
//  frameworks
//
//  Created by Dima Voropaev on 04.12.2023.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isSelectedFramework: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isSelectedFramework = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isSelectedFramework: .constant(false))
}
