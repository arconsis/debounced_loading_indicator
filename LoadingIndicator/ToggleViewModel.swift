import Foundation
import SwiftUI
import Combine

@MainActor
class ContentViewModel: ObservableObject {
    
    @Published var isLoading: Bool = false
    @Published var isLoadingDebounced = false
    
    private var cancellables = Set<AnyCancellable>()
    
    let requester = Requester()
    
    init() {
        _isLoading
            .projectedValue
            .debounce(for: .seconds(0.3), scheduler: RunLoop.main)
            .sink { [weak self] value in
                self?.isLoadingDebounced = value
            }
            .store(in: &cancellables)
    }
    
    func makeRequest(seconds: Double) {
        Task {
            isLoading = true
            await requester.perform(seconds: seconds)
            isLoading = false
        }
    }
}
