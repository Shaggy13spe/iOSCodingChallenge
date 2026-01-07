import SwiftUI

struct PostsListView: View {
    @ObservedObject var viewModel: PostsViewModel = PostsViewModel()

    var body: some View {
            VStack(spacing: 16) {

                // TODO:
                // Replace this placeholder with a view that reacts to the current state.
                //
                // You should:
                // - Show a loading indicator while data is being fetched
                // - Show a list of posts titles when data is available
                // - Show a message when there are no posts
                // - Show an error message if loading fails
                // - When a post row is tapped, open the detail screen that shows that post.
                //   The detail screen should receive the selected post and display its title and body.
                //
                // The state to drive this UI is already defined on the ViewModel.

                Text("This screen is intentionally incomplete.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)

                // TODO:
                // Trigger loading of posts when this screen appears.
                // You should call into the ViewModel and update the state accordingly.

                Spacer()
            }
            .padding()
        }
}

#Preview("Post Detail - stub") {
    NavigationView {
        PostsListView()
    }
}
