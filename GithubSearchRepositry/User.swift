//
//  User.swift
//  GithubSearchRepositry
//
//  Created by 松下慶大 on 2017/02/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
struct User : JSONDecodable {
    let id: Int
    let login: String
    
    init(json: Any) throws {
        guard let dictionary = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let id = dictionary["id"] as? Int else {
            throw JSONDecodeError.missingValue(key: "id", actualValue: dictionary["id"])
        }
        
        guard let login = dictionary["login"] as? String else {
            throw JSONDecodeError.missingValue(key: "login", actualValue: dictionary["loging"])
        }
        
        self.id = id
        self.login = login
    }
}


