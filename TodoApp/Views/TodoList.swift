//
//  TodoList.swift
//  TodoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/15.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct TodoList: View {
  @EnvironmentObject var todoData: TodoData
  @State var editing: Todo?
  
  var body: some View {
    VStack(alignment: .leading) {
      List(todoData.todos) { todo in
        Button(action: { self.editing = todo }) {
          TodoRow(todo: todo)
        }
      }
      .navigationBarTitle("Todo List")
      .sheet(item: $editing) { todo in
        TodoDetail(todo: todo) { todo in
          self.todoData.store(todo: todo)
        }
      }
      
      Button(action: { self.editing = Todo() }) {
        HStack {
          Image(systemName: "plus.circle.fill")
            .resizable()
            .frame(width: 20, height: 20)
          Text("add")
        }
      }
      .padding(.leading, 20)
    }
  }
}

struct TodoList_Previews: PreviewProvider {
  static var previews: some View {
    TodoList()
  }
}
