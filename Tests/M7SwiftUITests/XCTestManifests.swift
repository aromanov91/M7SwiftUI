import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(M7SwiftUITests.allTests),
    ]
}
#endif
