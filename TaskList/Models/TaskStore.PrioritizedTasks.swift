//
//  TaskStore.PrioritizedTasks.swift
//  TaskList
//
//  Created by RD on 7/8/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

extension TaskStore {
    struct PrioritizedTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}


extension TaskStore.PrioritizedTasks: Identifiable {
    var id: Task.Priority {priority}
}
