import Foundation

protocol OrderCreatorDelegate: AnyObject {
    func orderCreated()
}

class OrderCreator {
    weak var delegate: OrderCreatorDelegate?
    
    init(with delegate: OrderCreatorDelegate?) {
        self.delegate = delegate
    }
    
    func create() {
        // request
        
        delegate?.orderCreated()
    }
}
