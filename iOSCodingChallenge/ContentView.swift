import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            PostsListView()
                .navigationTitle("Posts")
        }
    }
}

struct PostsPlaceholderView: View {
    var body: some View {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
