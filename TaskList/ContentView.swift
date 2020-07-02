//
//  ContentView.swift
//  TaskList
//
//  Created by RD on 6/30/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    var taskStore = TaskStore() //this is the instance of the taskStore file
    var body: some View {
        List(taskStore.tasks.indices) { index in  //this creates a list 
            Text(self.taskStore.tasks[index].name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
