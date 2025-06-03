import SwiftUI

// MARK: - EnvironmentObjectExampleViewModel

class EnvironmentObjectExampleViewModel: ObservableObject {
    @Published var count = 0
}

// MARK: - EnvironmentObjectExampleView

struct EnvironmentObjectExampleView: View {
    @StateObject var viewModel = EnvironmentObjectExampleViewModel()
    
    var body: some View {
        HStack(spacing: 20) {
            Button {
                viewModel.count -= 1
            } label: {
                VStack {
                    Image(systemName: "minus")
                        .foregroundStyle(.white)
                }
                .frame(width: 40, height: 40)
                .background(Color.blue)
                .cornerRadius(20)
            }
            
            ChildEnvironmentObjectExampleView()
                .environmentObject(viewModel)
            
            Button {
                viewModel.count += 1
            } label: {
                VStack {
                    Image(systemName: "plus")
                        .foregroundStyle(.white)
                }
                .frame(width: 40, height: 40)
                .background(Color.blue)
                .cornerRadius(20)
            }
        }
    }
}

// MARK: - ChildEnvironmentObjectExampleView

extension EnvironmentObjectExampleView {
    struct ChildEnvironmentObjectExampleView: View {
        @EnvironmentObject var viewModel: EnvironmentObjectExampleViewModel
        
        var body: some View {
            Text("\(viewModel.count)")
        }
    }
}

#Preview {
    EnvironmentObjectExampleView()
}
