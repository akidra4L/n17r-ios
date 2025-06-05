import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

extension TabBarView {
    struct HomeView: View {
        var body: some View {
            NavigationView {
                Text("Home")
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

extension TabBarView {
    struct ProfileView: View {
        @EnvironmentObject var viewModel: AuthService
        
        var body: some View {
            NavigationView {
                VStack {
                    Text("Profile")
                    
                    Button {
                        viewModel.logOut()
                    } label: {
                        Text("Log Out")
                    }
                }
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}
