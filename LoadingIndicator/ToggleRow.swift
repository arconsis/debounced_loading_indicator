import Foundation
import SwiftUI

struct ToggleRow: View {
    
    let title: String
    let showsDebouncedIndicator: Bool
    @Binding var duration: Double
    
    @State var isOn: Bool = false
    @StateObject var viewModel = ContentViewModel()
    
    init(title: String, showsDebouncedIndicator: Bool, duration: Binding<Double>) {
        self.title = title
        self.showsDebouncedIndicator = showsDebouncedIndicator
        self._duration = duration
    }
    
    var isLoading: Bool {
        if showsDebouncedIndicator {
            return viewModel.isLoadingDebounced
        } else {
            return viewModel.isLoading
        }
    }
    
    var body: some View {
        Toggle(isOn: .init(
            get: { isOn },
            set: { value in
                isOn = value
                viewModel.makeRequest(seconds: duration)
            }
        )) {
            HStack {
                Text(title)
                Spacer()
                if isLoading {
                    ProgressView()
                }
            }
        }
    }
}
