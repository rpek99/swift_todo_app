//
//  MainViewViewModal.swift
//  TodoApp
//
//  Created by Rüstem Pek on 18.02.2024.
//

import Foundation
import FirebaseAuth

class MainViewViewModal: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
