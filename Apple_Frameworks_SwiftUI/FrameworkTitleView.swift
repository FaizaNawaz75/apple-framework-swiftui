//
//  FrameworkTitleView.swift
//  Apple_Frameworks_SwiftUI
//
//  Created by Faiza Nawaz on 04/01/2024.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    var framework: Framework
    
    var body: some View {
        
        VStack{
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.6)
        }
        .padding(10)
        
    }
}



#Preview {
    FrameworkTitleView(framework: MockData.frameworks[0])
}
