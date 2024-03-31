//
//  ThreadReplyCell.swift
//  SwiftUi-Threads
//
//  Created by Dat Nguyen on 3/20/24.
//

import SwiftUI

struct ThreadReplyCell: View {
    let reply: ThreadReply
    
    private var user: User? {
        return reply.user
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView(user: reply.replyUser, size: .small)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(thread.user?.username ?? "")
                            .font(.footnote)
                        .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text(thread.timestamp.timestampString())
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                    }
                    
                    Text(thread.caption)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                }
            }
            
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadReplyCell(reply: <#T##ThreadReply#>)
}
