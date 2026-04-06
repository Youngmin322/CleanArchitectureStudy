//
//  TodoRepository.swift
//  CleanArc
//
//  Created by Youngmin Cho on 4/6/26.
//

import Foundation

protocol TodoRepository {
    
    func todoInquiry() -> [TodoItem]
    
    func todoAdd(todo: TodoItem)
    
    func completed(todo: TodoItem)

}
