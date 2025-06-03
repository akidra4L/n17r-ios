import SwiftUI

class Example2ViewModel: ObservableObject {
    @Published var count = 0
}

struct Example2View: View {
    @ObservedObject var viewModel = Example2ViewModel()
    
    var body: some View {
        VStack {
            Text("Count: \(viewModel.count)")
            
            Button {
                viewModel.count += 1
            } label: {
                Text("Tap me")
            }
        }
    }
}

#Preview {
    Example2View()
}
