//
//  User.swift
//  ScheduleAssistantProject
//
//  Created by Aarushi Singh on 4/30/24.
//

import Foundation

struct User: Codable {
        let id: String
        let user_name: String
        let major: String
        let current_schedule: [String]
        let past_classes: [String]

}

extension User {

    static let dummyData2 =
        User(id: "1", user_name: "Aarushi Singh", major: "Computer Science", current_schedule: ["4110", "3410"], past_classes: ["1920", "1110"])
        
    

}
