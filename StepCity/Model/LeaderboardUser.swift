//
//  LeaderboardUser.swift
//  StepCity
//
//  Created by Kelly Chiu on 12/2/20.
//

import Foundation
import FirebaseFirestoreSwift

struct LeaderboardUser: Identifiable, Codable {
    
    @DocumentID var id: String? = UUID().uuidString
    var username: String
    var steps: Int
    // add profile picture
}
