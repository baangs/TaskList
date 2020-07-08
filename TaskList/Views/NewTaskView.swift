//
//  File.swift
//  TaskList
//
//  Created by RD on 7/2/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

//we need to add  the taskstore array to this view, we add taskstore as a propety
//that is using DI again same as in content view

//when you bind something in a view you access it with self or $


import SwiftUI

struct NewTaskView: View {
    var taskStore: TaskStore
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var text = "" //binding text var with empty string
    var body: some View {
        Form {
            TextField("Task Name", text: $text)//textfield using $ to bind the text
            Button("Add") {
                self.taskStore.tasks.append(
                    Task(name: self.text)
                )
                
                self.presentationMode.wrappedValue.dismiss()
            }
            .disabled(text.isEmpty)
        }
    }
}


struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
