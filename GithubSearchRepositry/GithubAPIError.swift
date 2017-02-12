//
//  GithubResponseError.swift
//  GithubSearchRepositry
//
//  Created by 松下慶大 on 2017/02/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
struct GithubAPIError : JSONDecodable, Error {
    
    struct FieldError: JSONDecodable {
        let resouce: String
        let field: String
        let code: String
        
        init(json: Any) throws {
            guard let dictionary = json as? [String : Any] else {
                throw JSONDecodeError.invalidFormat(json: json)
            }
            
            guard let resouce = dictionary["resouce"] as? String else {
                throw JSONDecodeError.missingValue(key: "resouce", actualValue: dictionary["resouce"])
            }
            
            guard let field = dictionary["field"] as? String else {
                throw JSONDecodeError.missingValue(key: "field", actualValue: dictionary["field"])
            }
            
            guard let code = dictionary["code"] as? String else {
                throw JSONDecodeError.missingValue(key: "code", actualValue: dictionary["code"])
            }
            
            self.resouce = resouce
            self.field = field
            self.code = code
        }
    }
    
    let message: String
    let fieldErrors: [FieldError]
    
    init(json: Any) throws {
        guard let dictionary = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let message = dictionary["message"] as? String else {
            throw JSONDecodeError.missingValue(key: "message", actualValue: dictionary["message"])
        }
        
        let fieldErrorObject = dictionary["errors"] as? [Any] ?? []
        let filedErros = try fieldErrorObject.map {
            return try FieldError(json: $0)
        }
        
        self.message = message
        self.fieldErrors = filedErros
    }
}
