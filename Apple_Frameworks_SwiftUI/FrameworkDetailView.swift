//
//  FrameworkDetailView.swift
//  Apple_Frameworks_SwiftUI
//
//  Created by Faiza Nawaz on 04/01/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @Binding var isFrameworkSelected: Bool
    
    var body: some View {
        
        ZStack {
            
            BackgroundView()
            
            VStack{
                
                HStack {
                    Spacer()
                    
                    Button{
                        isFrameworkSelected = false
                        
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 50, height: 50)
                        
                        
                    }
                    .padding([.trailing, .top])
                }
                
                Spacer()
                
                FrameworkTitleView(framework: framework).padding(.top, 20)
                
                Text(framework.description)
                    .font(.body)
                    .foregroundStyle(Color("descriptionColor"))
                    .padding(15)
                
                Spacer()
                
                Button{
                    print("hello")
                }label: {
                    FrameworkButton(title: "Learn More")
                }
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[0],
                        isFrameworkSelected: .constant(false))
}

struct FrameworkButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 60)
            .font(.title2)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
