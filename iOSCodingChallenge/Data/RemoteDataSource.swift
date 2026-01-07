import Foundation

protocol RemoteDataSource {
    func fetchPosts() async throws -> [PostDto]
}

struct RemoteDataSourceStub: RemoteDataSource {
    func fetchPosts() async throws -> [PostDto] {
        return []
    }
}
