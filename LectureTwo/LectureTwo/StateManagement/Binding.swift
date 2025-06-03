import SwiftUI

// MARK: - BindingExampleView

struct BindingExampleView: View {
    @State var count = 0
    
    var body: some View {
        HStack(spacing: 20) {
            Button {
                count -= 1
            } label: {
                VStack {
                    Image(systemName: "minus")
                        .foregroundStyle(.white)
                }
                .frame(width: 40, height: 40)
                .background(Color.blue)
                .cornerRadius(20)
            }
            
            ChildBindingExampleView(count: $count)
            
            Button {
                count += 1
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

// MARK: - ChildBindingExampleView

extension BindingExampleView {
    struct ChildBindingExampleView: View {
        @Binding var count: Int
        
        var body: some View {
            Text("\(count)")
        }
    }
}

#Preview {
    BindingExampleView()
}
