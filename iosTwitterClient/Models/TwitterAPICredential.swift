//
//  TwitterAPICredential.swift
//  iosTwitterClient
//
//  Created by yogasawara@stv on 2018/03/19.
//  Copyright © 2018年 sunday carpenter. All rights reserved.
//

import Foundation

struct TwitterAPICredential: JSONDataConvertible, Codable {
    let consumer_key: String
    let consumer_secret: String
}
