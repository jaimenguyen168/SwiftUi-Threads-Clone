//
//  DeveloperReview.swift
//  SwiftUi-Threads
//
//  Created by Dat Nguyen on 3/8/24.
//

import SwiftUI

extension PreviewProvider {
    static var dev: PreviewProvider {
        return PreviewProvider.shared
    }
}

class PreviewProvider {
    static let shared = PreviewProvider()
    
    let user = User(
        id: NSUUID().uuidString,
        fullname: "Dua Lipa",
        email: "dualipa@gmail.com",
        username: "dualipa"
    )
}
