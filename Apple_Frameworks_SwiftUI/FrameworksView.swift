//
//  FrameworksView.swift
//  Apple_Frameworks_SwiftUI
//
//  Created by Faiza Nawaz on 04/01/2024.
//

import SwiftUI

struct FrameworksView: View {
    
    @StateObject var frameworkViewModel = FrameworkViewModel()
    
    var body: some View {
        
        let columns = [GridItem(.flexible()),
                       GridItem(.flexible()),
                       GridItem(.flexible())]
        
        NavigationView {
            
            ZStack {
                BackgroundView()
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        
                        ForEach(MockData.frameworks) {framework in
                            
                            FrameworkTitleView(framework: framework)
                                .onTapGesture {
                                    frameworkViewModel.selectedFramework = framework
                                }
                        }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $frameworkViewModel.isShowingDetailView, content:
                        {FrameworkDetailView(framework: frameworkViewModel.selectedFramework!,
                                        isFrameworkSelected: $frameworkViewModel.isShowingDetailView)
                })
            }
        }}
}

#Preview {
    FrameworksView()
}

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [Color("bgTopColor"),
                                Color("bgBottomColor")],
                       startPoint: .top,
                       endPoint: .bottom).edgesIgnoringSafeArea(.all)
    }
}
