//
//  ContentView.swift
//  TodoApp
//
//  Created by KAWASHIMA Yoshiyuki on 2020/06/15.
//  Copyright © 2020 ykws. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      TodoList().environmentObject(TodoData())
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
