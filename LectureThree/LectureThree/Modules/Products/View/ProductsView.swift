import SwiftUI

struct ProductsView: View {
    @StateObject var viewModel = ProductsViewModel()
    
    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView()
            } else if let errorDescription = viewModel.errorDescription {
                Text(errorDescription)
            } else {
                if viewModel.products.isEmpty {
                    Text("Products is Empty")
                } else {
                    List(viewModel.products) { product in
                        HStack(spacing: 12) {
                            AsyncImage(url: product.image) { phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                } else {
                                    RoundedRectangle(cornerRadius: 12)
                                        .frame(width: 120, height: 120)
                                }
                            }
                            
                            Text("Name: \(product.title)")
                        }
                    }
                }
            }
        }
        .task {
            Task {
                await viewModel.fetchProducts()
            }
        }
    }
}

#Preview {
    ProductsView()
}
