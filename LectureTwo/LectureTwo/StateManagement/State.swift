import SwiftUI

struct StateExampleView: View {
    @State private var isOn = false
    @State private var count = 0
    
    var body: some View {
        VStack {
            Toggle("Toggle me", isOn: $isOn)
            
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
                
                Text("\(count)")
                    .font(.system(size: 24))
                
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
            .padding(.top, 36)
        }
        .padding(32)

    }
}

#Preview {
    StateExampleView()
}
