//
//  Threads.swift
//  SwiftUi-Threads
//
//  Created by Dat Nguyen on 3/9/24.
//

import Firebase

struct Thread: Identifiable, Codable, Hashable {
    let id: String
    
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    var user: User?
}
