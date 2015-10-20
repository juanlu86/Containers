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
            
            it("should be empty")
            {
                expect(stack.isEmpty()).to(beTrue())
            }
            
            it("should add a cool container")
            {
                let coolContainer = CoolContainer()
                stack.addContainer(coolContainer)
            }
            
            it("should not be empty if it contains one cool container")
            {
                stack.addContainer(CoolContainer())
                expect(stack.isEmpty()).to(beFalse())
            }
            
            it("should return the container position")
            {
                let coolContainer1 = CoolContainer()
                let coolContainer2 = CoolContainer()
                
                stack.addContainer(coolContainer1)
                stack.addContainer(coolContainer2)
                
                expect(stack.containerPosition(coolContainer2)).to(equal(2)) 
            }
        }
    }
}