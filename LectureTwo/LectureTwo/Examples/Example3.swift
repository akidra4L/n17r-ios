import SwiftUI

class Example3ViewModel: ObservableObject {
    @Published var isAuth = false
}

struct Example3View: View {
    @ObservedObject var viewModel = Example3ViewModel()
    
    var body: some View {
        if viewModel.isAuth {
            HomeView(viewModel: viewModel)
        } else {
            AuthHome(viewModel: viewModel)
        }
    }
}

extension Example3View {
    struct AuthHome: View {
        @ObservedObject var viewModel: Example3ViewModel
        
        var body: some View {
            Button {
                viewModel.isAuth = true
            } label: {
                Text("Authorize")
            }
        }
    }
}

extension Example3View {
    struct HomeView: View {
        @ObservedObject var viewModel: Example3ViewModel
        
        var body: some View {
            Text("Home View")
            
            Button {
                viewModel.isAuth = false
            } label: {
                Text("Log Out")
            }
        }
    }
}

#Preview {
    Example3View()
}
