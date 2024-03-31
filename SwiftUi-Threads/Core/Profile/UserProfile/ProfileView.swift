//
//  ProfileView.swift
//  SwiftUi-Threads
//
//  Created by Dat Nguyen on 3/8/24.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            // Bio and stats
            VStack(spacing: 20) {
                ProfileHeaderView(user: user)
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .modifier(ThreadsButtonModifier())
                }
                
                // User content list view
                UserContentListView()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
        
    }
}

#Preview {
    ProfileView(user: DeveloperPreview.shared.user)
}
