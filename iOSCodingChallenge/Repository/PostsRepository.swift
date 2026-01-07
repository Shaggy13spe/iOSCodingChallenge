import Foundation

protocol PostsRepository {
    func getPosts() async -> Result<[Post], Error>
}

// TODO(IMPLEMENT): Replace this stub with a real implementation that:
//  1) Calls RemoteDataSource.fetchPosts()
//  2) Maps PostDto -> Post
//  3) Handles errors and returns Result.failure(Error) as appropriate
struct PostsRepositoryStub: PostsRepository {
    private let remote: RemoteDataSource = RemoteDataSourceStub()
    
    func getPosts() async -> Result<[Post], Error> {
        return .success([])
    }
}
