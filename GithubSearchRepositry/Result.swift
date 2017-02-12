//
//  Result.swift
//  GithubSearchRepositry
//
//  Created by 松下慶大 on 2017/02/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation

enum Result<T, Error : Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
