//
//  ToDoListItemViewViewModal.swift
//  TodoApp
//
//  Created by Rüstem Pek on 18.02.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

// view model for single todo list item view
class ToDoListItemViewViewModal: ObservableObject{
    init(){
        
    }
    
    func toggleIsDone(item: ToDoListItem) {
        var existItem = item
        existItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(existItem.id)
            .setData(existItem.asDictionary())

    }
}
