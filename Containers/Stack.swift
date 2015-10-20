import Foundation

public class Stack {
    var craneWrapper: CraneWrapper
    var containers: [Container] = []
    
    public init(craneWrapper: CraneWrapper) {
        self.craneWrapper = craneWrapper
    }

    func raiseContainer(){
        craneWrapper.raiseContainer()
    }
    
    func lowerContainer(){
        craneWrapper.lowerContainer()
    }
    
    func addContainer(container: Container)
    {
        containers.append(container)
    }

    func isEmpty () -> Bool {
        return containers.count == 0
    }
    
    func containerPosition (container: Container) -> Int? {
        if let index = containers.indexOf(container) {
            return index + 1
        }
        return nil
    }
}