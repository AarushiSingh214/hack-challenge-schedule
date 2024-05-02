//
//  NetworkManager.swift
//  ScheduleAssistantProject
//
//  Created by Aarushi Singh on 4/30/24.
//

//import Alamofire
import Foundation

class NetworkManager {

    /// Shared singleton instance
    static let shared = NetworkManager()

    private init() { }

    /// Endpoint for dev server
    private let devEndpoint: String = ""
//     private let devEndpoint: String = "https://chatdev-wuzwgwv35a-ue.a.run.app/api/posts/"
//    
    let decoder = JSONDecoder()
    

    // MARK: - Requests
    func fetchPosts(completion: @escaping ([Course]) -> Void){
//        decoder.dateDecodingStrategy = .iso8601
//        AF.request(devEndpoint, method: .get)
//            .validate()
//            .responseDecodable(of: [Post].self, decoder: decoder){ response in
//            switch response.result{
//            case .success(let posts):
//                completion(posts)
//            case .failure(let error):
//                print("Error in NetworkingManager.fetchPost: \(error.localizedDescription)")
//                completion([])
//                }
//            }
    }
    
    func alikePost(post_id_title: String, completion: @escaping(Course) -> Void){
//       WHAT WOULD THE PARAMETERS BE NOW
//        let parameters: Parameters = [
//            "post_id": post_id_title,
//            "net_id" : "as2585"
//        ]
//        
//        AF.request(devEndpoint + "like/", method: .post, parameters: parameters)
//            .validate()
//            .responseDecodable(of: Course.self, decoder: decoder){ response in
//                switch response.result{
//                case .success(let course):
//                    print("Successfully added \(post_id_title) to roster")
//                    completion(course)
//                case .failure(let error):
//                    print("Error in NEtworkingManager.fetchRoster: \(error.localizedDescription)")
//                    
//                }
//            }
    }


}

