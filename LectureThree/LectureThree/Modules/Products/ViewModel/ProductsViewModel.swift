import Foundation

class ProductsViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var products: [Product] = []
    @Published var errorDescription: String?
    
    private let productsService = ProductsService()
    
    func fetchProducts() async {
        isLoading = true
        do {
            products = try await productsService.get()
        } catch {
            errorDescription = error.localizedDescription
        }
        isLoading = false
    }
}
