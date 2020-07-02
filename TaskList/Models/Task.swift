//
//  Task.swift
//  TaskList
//
//  Created by RD on 7/1/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

//This is where we will Model our data.

//Each task will have a name and show if it was completed or not

import Foundation



struct Task {
    let id = UUID()
    var name: String
    var completed = false
}

//now you need a place to keep track of the tasks, by using a model, we created another file for organization named taskstore.
