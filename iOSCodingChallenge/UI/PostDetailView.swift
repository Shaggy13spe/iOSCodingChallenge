import SwiftUI

struct PostDetailView: View {
    // TODO: This view should accept a Post and display details.
    // Keep this simple: show a headline for the title and the body text below.
    // The candidate should design the initializer / properties so this view can be
    // presented from PostsListView when a post is selected.

    var body: some View {
        VStack(spacing: 12) {
            Text("Post detail screen")
                .font(.title)
            Text("This view is a placeholder. Implement it to display the selected post's title and body.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

#Preview("Post Detail - stub") {
    PostDetailView()
}
