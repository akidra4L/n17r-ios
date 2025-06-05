import SwiftUI

final class AuthService: ObservableObject {
    private let userKey = "USER"
    
    @Published var user: User?
    @Published var authError: String?

    init() {
        fetchUser()
    }

    func register(with user: User) {
        guard
            user.firstName.count > 0,
            user.lastName.count > 0,
            user.nickname.count > 0,
            user.password.count > 0
        else {
            authError = "Nickname or Password should be more than 0 symbols"
            return
        }
        
        self.user = user
        saveUser()
        authError = nil
    }

    func login(nickname: String, password: String) {
        guard
            let data = UserDefaults.standard.data(forKey: userKey),
            let savedUser = try? JSONDecoder().decode(User.self, from: data)
        else {
            authError = "User not found"
            return
        }

        if savedUser.nickname == nickname && savedUser.password == password {
            self.user = savedUser
            authError = nil
        } else {
            authError = "Incorrect nickname or password"
        }
    }

    func logOut() {
        user = nil
        authError = nil
    }

    private func saveUser() {
        guard let user else {
            return
        }
        
        guard let encoded = try? JSONEncoder().encode(user) else { return }
        UserDefaults.standard.set(encoded, forKey: userKey)
    }

    private func fetchUser() {
        guard
            let data = UserDefaults.standard.data(forKey: userKey),
            let decodedUser = try? JSONDecoder().decode(User.self, from: data)
        else {
            return
        }
        self.user = decodedUser
    }
}
