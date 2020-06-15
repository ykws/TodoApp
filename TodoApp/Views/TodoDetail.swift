//
//  TodoDetail.swift
//  TodoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/15.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct TodoDetail: View {
  @State var todo: Todo
  var onSave: (Todo) -> ()
  
  func SectionTitle(_ title: String) -> some View {
    Text(title).font(.headline)
  }
  
  var body: some View {
    VStack(alignment: .leading) {
      SectionTitle("Title")
      TextField("Todo", text: $todo.title)
        .font(.title).padding()
      SectionTitle("Due date")
      DatePicker("", selection: $todo.dueDate, displayedComponents: [.date])
      Spacer()
    }
    .padding()
    .onDisappear {
      self.onSave(self.todo)
    }
  }
}

struct TodoDetail_Previews: PreviewProvider {
  static var previews: some View {
    TodoDetail(todo: Todo(), onSave: { _ in
      // TODO: Save logic
    })
  }
}
