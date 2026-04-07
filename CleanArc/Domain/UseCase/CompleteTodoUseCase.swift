//
//  CompleteTodoUseCase.swift
//  CleanArc
//
//  Created by Youngmin Cho on 4/7/26.
//

import Foundation

struct CompleteTodoUseCase {
    let repository: TodoRepository
    
    func execute(todo: TodoItem) {
        repository.completed(todo: todo)
    }
}
