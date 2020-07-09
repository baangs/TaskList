//
//  RowView.swift
//  TaskList
//
//  Created by RD on 7/6/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

//When a typr is a value type you need to bind it with either self or $

import SwiftUI

struct RowView: View {
    
    @Binding var task: Task
    
    let checkmark = Image(systemName: "checkmark")
    
    var body: some View {
        NavigationLink(destination: TaskEditingView(task: $task)) {
            
            if task.completed {
                checkmark
            } else {
                checkmark.hidden()
            }
            Text(task.name)
                .strikethrough(task.completed)
        }
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(Task(name: "To Do")))
    }
}
