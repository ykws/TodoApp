//
//  Todo.swift
//  TodoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/15.
//  Copyright © 2020 ykws. All rights reserved.
//
import Foundation

struct Todo: Identifiable {
  var id = UUID()
  var title: String = "Title"
  var dueDate: Date = Date()
}
