import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Home Screen")
                    .font(.largeTitle)

                NavigationLink("Go to Profile", destination: ProfileView())
            }
            .padding()
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Profile Screen")
                .font(.largeTitle)
        }
        .padding()
        .navigationTitle("Profile")
    }
}

#Preview {
    ContentView()
}
