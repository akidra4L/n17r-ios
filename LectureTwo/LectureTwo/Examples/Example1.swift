import SwiftUI

struct Example1View: View {
    @State var count = 0
    
    var body: some View {
        VStack {
            ChildView(count: $count)
            
            Button {
                count += 1
            } label: {
                Text("Tap me")
            }
        }
    }
}

extension Example1View {
    struct ChildView: View {
        @Binding var count: Int
        
        var body: some View {
            VStack {
                Text("Count in Child: \(count)")
            }
        }
    }
}

#Preview {
    Example1View()
}
