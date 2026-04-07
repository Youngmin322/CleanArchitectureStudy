//
//  FetchTodoUseCase.swift
//  CleanArc
//
//  Created by Youngmin Cho on 4/7/26.
//

import Foundation

struct FetchTodoUseCase {
    let repository: TodoRepository
    
    func execute() -> [TodoItem] {
       return repository.todoInquiry()
    }
}
