//
//  TodoData.swift
//  CleanArc
//
//  Created by Youngmin Cho on 4/6/26.
//

import Foundation
import SwiftData

class TodoData: TodoRepository {
    var todos: [TodoItem] = []
    
    func todoInquiry() -> [TodoItem] {
        return todos
    }
    
    func todoAdd(todo: TodoItem) {
        todos.append(todo)
    }
    
    func completed(todo: TodoItem) {
        if let todoIndex = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[todoIndex].isComplete = true
        }
    }
}
