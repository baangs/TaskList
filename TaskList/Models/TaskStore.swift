//
//  TaskStore.swift
//  TaskList
//
//  Created by RD on 7/1/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//we will create a property of this taskstore file and put an instance of it inside contentview
//creating an array of tasks
class TaskStore {
    var tasks = [
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
        ].map{Task(name: $0)}                                         //transform task names into full fledged tasks using                                                                   .map{} closure and using $0
}


