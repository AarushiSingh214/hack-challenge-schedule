//
//  User.swift
//  ScheduleAssistantProject
//
//  Created by Aarushi Singh on 4/30/24.
//

import Foundation
import UIKit

class UserProfile: UIViewController {
    private let userName = UILabel()
    private let userMajor = UILabel()
    private let currentSchedule = UILabel()
    private let pastSchedule = UILabel()
    
    private var users: [User] = User.dummyData2
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.white
        super.viewDidLoad()
        setUpUserName()
        setUpUserMajor()
        setUpCurrentSchedule()
    }
    
    func configure(user: User) {
        userName.text = user.user_name
        userMajor.text = user.major
        currentSchedule.text = String(user.current_schedule.count)
        pastSchedule.text = String(user.past_classes.count)
    }
    
    
    private func setUpUserName(){
        userName.textColor = UIColor.black
        userName.font = .systemFont(ofSize: 16, weight: .semibold)
        
        view.addSubview(userName)
        userName.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userName.topAnchor.constraint(equalTo: view.topAnchor),
            userName.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    private func setUpUserMajor(){
        userMajor.textColor = UIColor.black
        userMajor.font = .systemFont(ofSize: 16, weight: .semibold)
        
        view.addSubview(userMajor)
        userMajor.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userMajor.topAnchor.constraint(equalTo: userName.bottomAnchor),
            userMajor.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    private func setUpCurrentSchedule(){
        currentSchedule.textColor = UIColor.black
        currentSchedule.font = .systemFont(ofSize: 16, weight: .semibold)
        
        view.addSubview(currentSchedule)
        currentSchedule.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            currentSchedule.topAnchor.constraint(equalTo: userMajor.bottomAnchor),
            currentSchedule.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    private func setUpPastSchedule(){
        pastSchedule.textColor = UIColor.black
        pastSchedule.font = .systemFont(ofSize: 16, weight: .semibold)
        
        view.addSubview(pastSchedule)
        pastSchedule.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pastSchedule.topAnchor.constraint(equalTo: currentSchedule.bottomAnchor),
            pastSchedule.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}
    
//    // MARK: - UICollectionViewDelegate
//    
//    extension UserProfile: UICollectionViewDelegate {}
//    
//    extension UserProfile: UICollectionViewDataSource {
//    
//        
//        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//                
//                return users.count
//            }
//        
//        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ClassCollectionViewCell.reuse, for: indexPath) as? ClassCollectionViewCell else { return UICollectionViewCell() }
//            
//            cell.configure(user: users[indexPath.row])
//            return cell
//        }
//        
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//            return UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0)
//        }
//        
//    }
//    
//    // MARK: - UICollectionViewDelegateFlowLayout
//    
//    extension UserProfile: UICollectionViewDelegateFlowLayout {
//        
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//            let size = collectionView.frame.width
//            return CGSize(width: size, height: size)
//        }
//        
//    }
