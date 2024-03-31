//
//  UserContentListView.swift
//  SwiftUi-Threads
//
//  Created by Dat Nguyen on 3/9/24.
//

import SwiftUI

struct UserContentListView: View {
    
    @State private var selectedFilter: ProfileThreadsFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileThreadsFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(ProfileThreadsFilter.allCases) { filter in
                    VStack {
                        Text(filter.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == filter ? .semibold : .regular)
                        
                        if selectedFilter == filter {
                            Rectangle()
                                .foregroundStyle(.black)
                                .frame(width: filterBarWidth, height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        } else {
                            Rectangle()
                                .foregroundStyle(.clear)
                                .frame(width: filterBarWidth, height: 1)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.spring()) {
                            selectedFilter = filter
                        }
                    }
                }
            }
            
            LazyVStack {
                ForEach(0...10, id: \.self) { thread in
//                    ThreadCell(thread: <#T##Thread#>)
                }
            }
        }
        .padding(.vertical)
    }
}

#Preview {
    UserContentListView()
}
