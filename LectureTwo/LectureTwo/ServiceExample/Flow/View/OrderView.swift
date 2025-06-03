import SwiftUI

struct OrderView: View {
    @StateObject var viewModel = OrderViewModel()
    
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
            
            Button {
                viewModel.createOrder()
            } label: {
                Text("Create Order")
            }
        }
    }
}

#Preview {
    OrderView()
}
