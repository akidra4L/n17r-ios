import SwiftUI

struct MVVMView: View {
    @StateObject var viewModel = MVVMViewModel()
    
    var body: some View {
        HStack(spacing: 20) {
            Button {
                viewModel.decrement()
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
                viewModel.increment()
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
    MVVMView()
}
