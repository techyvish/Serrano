//
//  expm1_op_test.swift
//  SerranoTests
//
//  Created by ZHONGHAO LIU on 6/6/17.
//  Copyright © 2017 ZHONGHAO LIU. All rights reserved.
//

import XCTest

import XCTest
@testable import Serrano

class Expm1OpDelegate: OperatorDelegateConvUnaryOp {
    
    required public convenience init(compareBlock: ((Tensor, Tensor) -> Void)?) {
        let blcok =  {(rawTensor: Tensor, resultTensor: Tensor) -> Void in
            XCTAssertEqual(rawTensor.count, resultTensor.count)
            let readerReader = rawTensor.floatValueReader
            let resultReader = resultTensor.floatValueReader
            for i in 0..<rawTensor.count {
                let val = expm1(readerReader[i])
                if val.isNaN || val.isInfinite || resultReader[i].isNaN || resultReader[i].isInfinite { continue }
                if abs(val) < 0.001 {
					XCTAssertEqualWithAccuracy(val, resultReader[i], accuracy: 0.001)
				} else {
					XCTAssertEqualWithAccuracy(val, resultReader[i], accuracy: abs(val*0.001))
				}
            }
        }
        self.init(block: blcok)
    }
}

class Expm1OpTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test() {
        let testCase = UnarOpTest<Expm1OpDelegate, Expm1Operator>()
        testCase.testAll()
    }
    
}


