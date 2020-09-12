import XCTest

import PrettyPrintJSONTests

var tests = [XCTestCaseEntry]()
tests += PrettyPrintJSONTests.allTests()
XCTMain(tests)
