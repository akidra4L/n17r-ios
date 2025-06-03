import SwiftUI

class Example4ViewModel: ObservableObject {
    @Published var count = 0
}

struct Example4View: View {
    @StateObject var viewModel = Example4ViewModel()
    
    var body: some View {
        VStack {
            ChildView()
                .environmentObject(viewModel)
            
            Button {
                viewModel.count += 1
            } label: {
                Text("Tap me")
            }
        }
    }
}

extension Example4View {
    struct ChildView: View {
        @EnvironmentObject var viewModel: Example4ViewModel
        
        var body: some View {
            HStack {
                Text("Hi, \(viewModel.count)")
            }
        }
    }
}

#Preview {
    Example4View()
}
