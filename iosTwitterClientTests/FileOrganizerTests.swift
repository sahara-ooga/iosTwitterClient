//
//  FileOrganizerTests.swift
//  iosTwitterClientTests
//
//  Created by yogasawara@stv on 2018/03/19.
//  Copyright © 2018年 sunday carpenter. All rights reserved.
//

import XCTest
@testable import iosTwitterClient

class FileOrganizerTests: XCTestCase {
    
    let jsonFileName = ""
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLoadJSON() {
        let json = FileOrganizer.open(json: jsonFileName)
        
        guard let j = json else {
            XCTFail("Fail to load json file.>>>>>>>>>>>>>")
            return
        }
        
        do {
            let credential = try TwitterAPICredential(j)
            print(credential)
            XCTAssertFalse(credential.consumer_key.isEmpty)
            XCTAssertFalse(credential.consumer_secret.isEmpty)
        } catch {
            print("Error has taken place >>>>>>>> \(error)")
            XCTFail("fail to decode json to credential type")
        }
    }
    
}
