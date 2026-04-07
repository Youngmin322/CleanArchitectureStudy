//
//  ViewModel.swift
//  CleanArc
//
//  Created by Youngmin Cho on 4/7/26.
//

import SwiftUI

@Observable
class TodoViewModel {
    var todos: [TodoItem] = []
    
    let addTodoUseCase: AddTodoUseCase
    let fetchTodoUseCase: FetchTodoUseCase
    let completeTodoUseCase: CompleteTodoUseCase
    
    
    init() {
        let repository = TodoData()
        self.addTodoUseCase = AddTodoUseCase(repository: repository)
        self.fetchTodoUseCase = FetchTodoUseCase(repository: repository)
        self.completeTodoUseCase = CompleteTodoUseCase(repository: repository)
    }
    
    func fetchTodos() {
        self.todos = fetchTodoUseCase.execute()
    }
    
    func addTodos(todo: TodoItem) {
        addTodoUseCase.execute(todo: todo)
        fetchTodos()
    }
    
    func completeTodo(todo: TodoItem) {
        completeTodoUseCase.execute(todo: todo)
        fetchTodos()
    }
}
