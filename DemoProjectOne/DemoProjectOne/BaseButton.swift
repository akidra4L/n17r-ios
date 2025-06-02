import SwiftUI

struct BaseButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
        }
    }
}
