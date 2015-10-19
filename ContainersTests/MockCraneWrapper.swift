import Foundation
@testable import Containers

class MockCraneWrapper:CraneWrapper{
    
    var raiseContainerCalled = false
    var lowerContainerCalled = false
    
    override func raiseContainer() {
        raiseContainerCalled = true
    }
    
    override func lowerContainer() {
        lowerContainerCalled = true
    }
    
    func isRaiseContainerCalled () -> Bool {
        return raiseContainerCalled
    }
    
    func isLowerContainerCalled () -> Bool {
        return lowerContainerCalled
    }
}