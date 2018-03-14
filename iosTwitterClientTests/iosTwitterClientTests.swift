//
//  iosTwitterClientTests.swift
//  iosTwitterClientTests
//
//  Created by yogasawara@stv on 2018/03/04.
//  Copyright © 2018年 sunday carpenter. All rights reserved.
//

import XCTest
@testable import iosTwitterClient
import RepositoryTool

class iosTwitterClientTests: XCTestCase {
    let repo = TestModel()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }
    
    
}

struct TestRepoEle:RepositoryElement {
    var id: String
    
    typealias Identifier = String

}

struct TestModel:SyncRepository {
    
    func find(of id: TestModel.Element.Identifier) -> TestModel.Element? {
        return nil
    }
    
    func findAll(query: Query?) -> [TestModel.Element] {
        return [TestRepoEle(id:"id")]
    }
    
    func save(_ elements: [TestModel.Element]) -> Bool {
        return true
    }
    
    func delete(_ elements: [TestModel.Element]) -> Bool {
        return true
    }
    
    typealias Element = TestRepoEle
    
    
}
