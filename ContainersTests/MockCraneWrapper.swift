import Foundation
@testable import Containers

class MockCraneWrapper:CraneWrapper{
    
    var raiseContainerCalled = false
    
    override func raiseContainer() {
        raiseContainerCalled = true
    }
    
    func isRaiseContainerCalled () -> Bool {
        return raiseContainerCalled
    }
}