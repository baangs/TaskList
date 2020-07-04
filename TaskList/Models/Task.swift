//
//  Task.swift
//  TaskList
//
//  Created by RD on 7/1/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//

//This is where we will Model our data.
//this file contains the structure of the task, its definition and telling the cpu what a task is, how to identify it and if its true or false
//Each task/data will have a name and show if it was completed or not

import Foundation



struct Task: Identifiable {//identifiable protocol makes or task/data unique since we have a id property
    let id = UUID() //this uniquely identifies your data, so that you may display them in a list
    var name: String 
    var completed = false
}

//now you need a place to keep track of the tasks/data, by using a model, we created another file for organization named taskstore.
