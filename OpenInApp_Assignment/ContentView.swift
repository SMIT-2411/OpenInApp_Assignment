import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        VStack {
            if let response = viewModel.response {
                // Display your UI components using the response data
                Text("Total Links: \(response.message)")
                Text("Support WhatsApp Number: \(response.support_whatsapp_number)")
                
                // Display recent links
                List(response.data.recent_links, id: \.url_id) { link in
                    Text(link.title)
                }
                
                // Display top links
                List(response.data.top_links, id: \.url_id) { link in
                    Text(link.title)
                }
            } else {
                // Placeholder or loading indicator while data is being fetched
                ProgressView()
            }
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
