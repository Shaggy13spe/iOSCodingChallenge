import Foundation
import Combine

@MainActor
class PostsViewModel: ObservableObject {
    enum State {
        case idle
        case loading
        case loaded([Post])
        case empty
        case error(String)
    }

    @Published private(set) var state: State = .idle

    private let repository: PostsRepository

    init(repository: PostsRepository? = nil) {
        self.repository = repository ?? PostsRepositoryStub()
    }

    func load() {
        Task {
            await loadAsync()
        }
    }

    // TODO(IMPLEMENT): Replace this stub with real logic that:
    //  1) Sets state to .loading
    //  2) Calls repository to retrieve posts
    //  3) Maps Result to .loaded / .empty / .error states
    private func loadAsync() async {
        // Candidate must implement this method
    }
}

