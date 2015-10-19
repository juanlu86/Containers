import Quick
import Nimble
@testable import Containers

class StackTests: QuickSpec {
    
    override func spec() {

        describe("stack")
        {
            
            let craneWrapper = MockCraneWrapper()
            var stack: Stack!

            beforeEach
            {
                stack = Stack(craneWrapper: craneWrapper)
            }

            it("can be created")
            {
                expect(stack).toNot(beNil())
            }

            it("should raise a container")
            {
                stack.raiseContainer()
                expect(craneWrapper.isRaiseContainerCalled()).to(beTrue())
            }
            
            it("should lower a container")
            {
                stack.lowerContainer()
                expect(craneWrapper.isLowerContainerCalled()).to(beTrue())
            }
        }
    }
}