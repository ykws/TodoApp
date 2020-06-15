//
//  TodoData.swift
//  TodoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/15.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

class TodoData: ObservableObject {
  @Published var todos: [Todo] = []
  
  func store(todo: Todo) {
    if let index = todos.firstIndex(where: { $0.id == todo.id }) {
      todos[index] = todo
    } else {
      todos.insert(todo, at: 0)
    }
  }
}
