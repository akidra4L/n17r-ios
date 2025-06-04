import Foundation

struct Product: Identifiable, Decodable {
    let id: Int
    let price: Float
    let title: String
    let description: String
    let category: String
    let rating: Rating
    let image: URL
}

extension Product {
    struct Rating: Decodable {
        let rate: Float
        let count: Int
    }
}

/*
 json: { "product_id": Int }
 
 struct Product {
    enum CodingKeys: String, CodingKey {
        case productID = "product_id"
    }
 
    let productID: Int
 }
 */
