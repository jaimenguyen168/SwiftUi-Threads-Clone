//
//  ProfileViewModel.swift
//  SwiftUi-Threads
//
//  Created by Dat Nguyen on 3/8/24.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    
    @Published var currentUser: User?
    
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        setupSubscriber()
    }
    
    private func setupSubscriber() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellable)
    }
}

