//
//  ThreadsCreateViewModel.swift
//  SwiftUi-Threads
//
//  Created by Dat Nguyen on 3/9/24.
//

import Firebase

class ThreadCreateViewModel: ObservableObject {
    
    func uploadThread(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let thread = Thread(
            ownerUid: uid,
            caption: caption,
            timestamp: Timestamp(),
            likes: 0,
            replies: 0
        )
        
        try await ThreadService.uploadThread(thread)
    }
}
