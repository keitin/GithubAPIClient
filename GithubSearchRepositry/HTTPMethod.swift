//
//  HTTPMethod.swift
//  GithubSearchRepositry
//
//  Created by 松下慶大 on 2017/02/12.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation

enum HTTPMethod : String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case head = "HEAD"
    case delete = "DELETE"
    case patch = "PATCH"
    case trace = "TRACE"
    case options = "OPTIONS"
    case connect = "CONNECT"
}
