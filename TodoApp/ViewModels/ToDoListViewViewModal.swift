//
//  ToDoListViewViewModal.swift
//  TodoApp
//
//  Created by Rüstem Pek on 18.02.2024.
//

import Foundation
import FirebaseFirestore

// view model for list of items view
class ToDoListViewViewModal: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    // Delete list item
    // - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
