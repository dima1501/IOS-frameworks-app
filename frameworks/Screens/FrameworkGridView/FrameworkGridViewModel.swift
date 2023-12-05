//
//  FrameworkGridViewModel.swift
//  frameworks
//
//  Created by Dima Voropaev on 04.12.2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isSelectedFramework = true
        }
    }
    
    @Published var isSelectedFramework = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
