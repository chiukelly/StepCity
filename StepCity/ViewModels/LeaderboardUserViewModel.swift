//
//  UserViewModel.swift
//  StepCity
//
//  Created by Kelly Chiu on 12/2/20.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class LeaderboardUserViewModel: ObservableObject {
    @Published var leaderboardUserList = [LeaderboardUser]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("userFriends").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
                self.leaderboardUserList = documents.map { (queryDocumentSnapshot) -> LeaderboardUser in
                return try? queryDocumentSnapshot.data(as: LeaderboardUser.self)
                    
//                let data = queryDocumentSnapshot.data()
//
//                let username = data["username"] as? String ?? ""
//                let steps = data["steps"] as? Int ?? 0
//                // let profilePic =
//
//                return LeaderboardUser(username: username, steps: steps)
            }
        }
    }
}
