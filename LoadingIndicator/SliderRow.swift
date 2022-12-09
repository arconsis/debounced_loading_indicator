import Foundation
import SwiftUI

struct SliderRow: View {
    
    @Binding var duration: Double
    
    var body: some View {
        Slider(
            value: $duration,
            in: 0...3,
            step: 0.1
        ) {
            Label("Request duration", systemImage: "circle")
        } minimumValueLabel: {
            Text("0 sec")
        } maximumValueLabel: {
            Text("3 sec")
        }
    }
}
