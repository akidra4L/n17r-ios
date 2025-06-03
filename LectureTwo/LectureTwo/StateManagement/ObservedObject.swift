import SwiftUI

// MARK: - ObservedObjectExampleViewModel

class ObservedObjectExampleViewModel: ObservableObject {
    @Published var count = 0
}

// MARK: - ObservedObjectExampleView

struct ObservedObjectExampleView: View {
    @StateObject var viewModel = ObservedObjectExampleViewModel()
    
    var body: some View {
        HStack {
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
            
            Text("\(viewModel.count)")
            
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

#Preview {
    ObservedObjectExampleView()
}
