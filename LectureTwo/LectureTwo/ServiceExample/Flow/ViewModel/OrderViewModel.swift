import SwiftUI

class OrderViewModel: ObservableObject {
    private lazy var orderCreator = OrderCreator(with: self)
    
    @Published var count = 0
    
    func createOrder() {
        orderCreator.create()
    }
}

extension OrderViewModel: OrderCreatorDelegate {
    func orderCreated() {
        count += 1
    }
}
