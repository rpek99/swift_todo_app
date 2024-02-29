//
//  ProfileViewViewModal.swift
//  TodoApp
//
//  Created by Rüstem Pek on 18.02.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ProfileViewViewModal: ObservableObject{
    @Published var user: User? = nil
    
    init(){
        
    }
    
    func fetchUser() {
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users").document(userId).getDocument {[weak self] snapshot, error in
            guard let data = snapshot?.data(), error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self?.user = User(
                    id: data["id"] as? String ?? "",
                    name: data["name"] as? String ?? "",
                    email: data["email"] as? String ?? "",
                    joined: data["joined"] as? TimeInterval ?? 0
                )
            }
        }
    }
    
    func logOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print(error)
        }
        
    }
}
