import Foundation

// API endpoint: GET https://jsonplaceholder.typicode.com/posts

protocol RemoteDataSource {
    func fetchPosts() async throws -> [PostDto]
}

struct RemoteDataSourceStub: RemoteDataSource {
    func fetchPosts() async throws -> [PostDto] {
        return []
    }
}
