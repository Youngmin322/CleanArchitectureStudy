//
//  UseCase.swift
//  CleanArc
//
//  Created by Youngmin Cho on 4/6/26.
//

import Foundation

struct AddTodoUseCase {
    let repository: TodoRepository
    
    func execute(todo: TodoItem) {
        repository.todoAdd(todo: todo)
    }
}
