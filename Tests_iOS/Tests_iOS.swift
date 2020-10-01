//
//  Tests_iOS.swift
//  Tests_iOS
//
//  Created by steve on 9/22/20.
//

import XCTest
@testable
import EmpDirMP

class Tests_iOS: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
//    func testEmployeeFetcher() throws {
//        let fetcher = EmployeeFetcher()
//        var email = ""
//
//        let exp = self.expectation(description: "request loaded")
//
//        waitForExpectations(timeout: 3)
//
//        for employee in fetcher.employees {
//            if employee.fullName == "Jack Dorsey" {
//                email = employee.emailAddress
//            }
//        }
//
//        XCTAssertEqual(email, "jdorsey.demo@squareup.com")
//    }
}
