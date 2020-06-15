//
//  TodoRow.swift
//  TodoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/15.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct TodoRow: View {
  var todo: Todo
  
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text(todo.title)
          .font(.title).fontWeight(.semibold)
        HStack {
          Image(systemName: "clock")
          Text(formatter.string(from: todo.dueDate))
        }
        .padding(.leading, 8)
      }
      Spacer()
    }
  }
}

private let formatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.dateFormat = "M月d日"
  return formatter
}()

struct TodoCard_Previews: PreviewProvider {
  static var previews: some View {
    TodoRow(todo: Todo())
      .previewLayout(.fixed(width: 300, height: 130))
  }
}
