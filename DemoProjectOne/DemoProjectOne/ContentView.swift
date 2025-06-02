import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Home Screen")
                
                NavigationLink("Profile", destination: ProfileView())
                
                BaseButton(title: "ContentViewButton") {
                    print("DEBUG: baseButtonDidTap")
                }
            }
        }
    }
}

extension ContentView {
    struct ProfileView: View {
        var body: some View {
            VStack(spacing: 20) {
                Text("Profile Screen")
                    .titleStyle()
            }
        }
    }
}

extension View {
    func titleStyle() -> some View {
        self.font(.title).foregroundStyle(.blue)
    }
}

#Preview {
    ContentView()
}
