import Foundation

protocol Animal {
    var category: String { get }
}

class Sinica: Animal {
    var category: String { "Bird" }
}

class Tiger: Animal {
    var category: String { "Cat" }
}
