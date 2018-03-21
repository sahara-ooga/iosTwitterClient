//
//  TwitterCredentialTests.swift
//  iosTwitterClientTests
//
//  Created by yogasawara@stv on 2018/03/21.
//  Copyright © 2018年 sunday carpenter. All rights reserved.
//

import XCTest
@testable import iosTwitterClient

class TwitterCredentialTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInitialize() {
        let jsonName = "credential"
        
        do {
            let credential = try TwitterAPICredential(json: jsonName)
            XCTAssertFalse(credential.consumer_key.isEmpty)
            XCTAssertFalse(credential.consumer_secret.isEmpty)
        } catch {
            print("Error has taken place >>>>>>>> \(error)")
            XCTFail("fail to decode json to credential type")
        }
    }
    
}
