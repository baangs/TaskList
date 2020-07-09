//
//  ContentView.swift
//  TaskList
//
//  Created by RD on 6/30/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

//since the taskstore file IS the data we want to display, contentview is HOW we want to display the data, in this case as a list.
//we need to supply other views with our task store data, we do this with dependency injection(DI). Remember without some data there is no data to display and content view is the starting/main point in which our data will be displayed.

//this var taskstore is declares an instance of the taskStore file

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var taskStore: TaskStore
    
    
    @State var modalIsPresented = false
    var body: some View {
        NavigationView {
            List {
                ForEach(taskStore.prioritizedTasks) {
                    index in SectionView(prioritizedTasks: self.$taskStore.prioritizedTasks[index])
                }
            }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Tasks")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
            Button(action: {
                self.modalIsPresented = true
            }) {
                Image(systemName: "plus")
            })
        }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())         //preview type is using DI for taskstore
    }
}

//preview type is using DI for taskstore

