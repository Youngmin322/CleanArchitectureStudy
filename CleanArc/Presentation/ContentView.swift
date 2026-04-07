//
//  ContentView.swift
//  CleanArc
//
//  Created by Youngmin Cho on 4/6/26.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = TodoViewModel()
    @State private var title = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            TextField(
                "할 일을 입력하세요",
                text: $title
            )
            .padding(.horizontal)
            
            Button("완료") {
                let newTodo = TodoItem(title: title, isComplete: false, date: Date())
                viewModel.addTodos(todo: newTodo)
            }
            
            List(viewModel.todos) {
                Text($0.title)
            }
        }
    }
}

#Preview {
    ContentView()
}
