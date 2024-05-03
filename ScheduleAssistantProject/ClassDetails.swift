//
//  ClassDetails.swift
//  ScheduleAssistantProject
//
//  Created by Aarushi Singh on 4/30/24.
//

import Foundation
import UIKit

class ClassDetails: UIViewController {
    private let course_name = UILabel()
    private let time = UILabel()
    private let location = UILabel()
    private let classDescription = UILabel()
    private let instructor = UILabel()
    
//    private var users: [User] = User.dummyData2
    private var courses: [Course] = Course.dummyData
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
        super.viewDidLoad()
        
        setUpCourseName()
        setUpTime()
        setUpLocation()
        setUpDescription()
        setUpInstructor()
    }
    
    init(course: Course) {
        course_name.text = course.course_name
        time.text = course.time
        location.text = course.location
        classDescription.text = course.description
        instructor.text = course.instructor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setUpCourseName(){
//        course_name.text = "hihihi"
        course_name.textColor = UIColor.black
        course_name.backgroundColor = UIColor.red
        course_name.font = .systemFont(ofSize: 16, weight: .semibold)

        view.addSubview(course_name)
        course_name.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            course_name.topAnchor.constraint(equalTo: view.topAnchor, constant: 125),
            course_name.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        ])

    }
    
    private func setUpTime(){
//        time.text = "TIME"
        time.textColor = UIColor.black
        time.font = .systemFont(ofSize: 16, weight: .semibold)

        view.addSubview(time)
        time.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            time.topAnchor.constraint(equalTo: course_name.bottomAnchor, constant: 16),
            time.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])

    }
    
    private func setUpLocation(){
//        location.text = "LOCATION"
        location.textColor = UIColor.black
        location.font = .systemFont(ofSize: 16, weight: .semibold)

        view.addSubview(location)
        location.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            location.topAnchor.constraint(equalTo: time.bottomAnchor, constant: 16),
            location.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])

    }
    
    private func setUpDescription(){
//        classDescription.text = "DESCRIPTION"
        classDescription.textColor = UIColor.black
        classDescription.font = .systemFont(ofSize: 16, weight: .semibold)

        view.addSubview(classDescription)
        classDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            classDescription.topAnchor.constraint(equalTo: location.bottomAnchor, constant: 16),
            classDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    private func setUpInstructor(){
//        instructor.text = "INSTRUCTOR"
        instructor.textColor = UIColor.black
        instructor.font = .systemFont(ofSize: 16, weight: .semibold)

        view.addSubview(instructor)
        instructor.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            instructor.topAnchor.constraint(equalTo: classDescription.bottomAnchor, constant: 16),
            instructor.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}
