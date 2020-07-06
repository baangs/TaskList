//
//  File.swift
//  TaskList
//
//  Created by RD on 7/2/20.
//  Copyright © 2020 Reggie Daniels. All rights reserved.
//



import SwiftUI

struct NewTaskView: View {
    @State var text = "" //binding text var with empty string
    var body: some View {
        TextField("Task Name", text: $text)
    }//this is a textfield using $ to bind the text var
}


struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
