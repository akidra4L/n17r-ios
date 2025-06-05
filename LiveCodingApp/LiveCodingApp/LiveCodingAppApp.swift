import SwiftUI

@main
struct LiveCodingAppApp: App {
    @StateObject private var authService = AuthService()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                if authService.user == nil {
                    AuthView()
                        .environmentObject(authService)
                } else {
                    TabBarView()
                        .environmentObject(authService)
                }
            }
        }
    }
}
