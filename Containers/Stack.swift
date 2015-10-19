import Foundation

public class Stack {
    var craneWrapper: CraneWrapper

    public init(craneWrapper: CraneWrapper) {
        self.craneWrapper = craneWrapper
    }

    func raiseContainer(){
        craneWrapper.raiseContainer()
    }

}