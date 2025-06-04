import Foundation

class ProductsService {
    private let networkClient = NetworkClient()
    
    func get() async throws -> [Product] {
        try await networkClient.get(relativePath: "/products")
    }
    
//    func get() async throws -> [Product] {
//        guard
//            let url = URL(string: "https://fakestoreapi.com/products")
//        else {
//            return []
//        }
//        
//        let (data, _) = try await URLSession.shared.data(from: url)
//        let products = try JSONDecoder().decode([Product].self, from: data)
//        return products
//    }
}
