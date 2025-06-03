import SwiftUI

class MVVMViewModel: ObservableObject {
    @Published var model = MVVMModel()
    
    var count: Int {
        model.count
    }
    
    func increment() {
        model.count += 1
    }
    
    func decrement() {
        model.count -= 1
    }
}
