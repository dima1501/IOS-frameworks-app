import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks, id: \.id) { framework in
                    
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isSelectedFramework: $viewModel.isSelectedFramework)) {
                        FrameworkTitleView(framework: framework)
                    }
                    
                }
            }
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}

