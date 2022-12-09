import Foundation
import SwiftUI

struct InfoRow: View {
    
    let duration: Double
    
    var body: some View {
        HStack {
            Text("Request duration")
            Spacer()
            Text(String(format: "%.1f seconds", duration)).font(.headline)
        }
    }
}
