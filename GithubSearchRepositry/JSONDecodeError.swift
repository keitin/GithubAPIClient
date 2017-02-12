//
//  JSONDecodeError.swift
//  GithubSearchRepositry
//
//  Created by 松下慶大 on 2017/02/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
enum JSONDecodeError : Error {
    case invalidFormat(json: Any)
    case missingValue(key: String, actualValue: Any)
}
