//
//  TaskStore.swift
//  TaskList
//
//  Created by RD on 7/1/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.


//we will create a property of this taskstore file and put an instance of it inside contentview
//creating an array of tasks/data
//taskstore contains data that we want to display onto other views so it is a dependency, contenview and other views we create depend on task store, without taskstore there is no data to be display.


import Combine

class TaskStore: ObservableObject {
    @Published var tasks = [
        "Code a app",
        "Code a app",
        "Walk dog",
        "Clean room",
        "Rake leaves",
        "Clean Shoes",
        "Watch Tv",
        "Play Games",
        "Do Hw",
        "Eat food"
        ].map{Task(name: $0)}                                         //transform task/data names into full fledged tasks using                                                                   .map{} closure and using $0
    @Published var prioritizedTasks = [
        PrioritizedTasks(priority: .high, names:
        [   "Code a app",
            "Code a app",
            "Walk dog",
            "Clean room" ]),
        
        PrioritizedTasks(priority: .medium, names:
               [ "Rake leaves",
                 "Clean Shoes" ]),
        
        PrioritizedTasks(priority: .low, names:
               [ "Play Games" ]),
        
        PrioritizedTasks(priority: .no, names:
               [ "Do Hw",
                 "Eat food" ]),
    ]

}


extension TaskStore.PrioritizedTasks {
    init(priority: Task.Priority, names: [String]) {
        self.init(
            priority: priority,
            tasks: names.map {Task(name: $0)}
        )
    }
}
