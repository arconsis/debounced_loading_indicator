import Foundation

class Requester {
    
    func perform(seconds: Double) async {
        do {
            try await Task.sleep(nanoseconds: UInt64(seconds * 1_000_000_000))
        } catch {
            fatalError("Crash for now to make it simple.")
        }
    }
}
