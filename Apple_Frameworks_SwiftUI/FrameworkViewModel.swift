//
//  FrameworkViewModel.swift
//  Apple_Frameworks_SwiftUI
//
//  Created by Faiza Nawaz on 05/01/2024.
//

import SwiftUI

final class FrameworkViewModel : ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
