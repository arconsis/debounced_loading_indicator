import SwiftUI
import Combine

struct ContentView: View {
    
    @State var duration: Double = 0.5
    
    var body: some View {
        Form {
            settingsSection
            testIndicatorsSection
        }
    }
    
    var settingsSection: some View {
        Section {
            InfoRow(duration: duration)
            SliderRow(duration: $duration)
        } header: {
            Text("Settings")
        } footer: {
            Text("Set a specific duration for your request for testing your appearance of the loading indicator")
        }
    }
    
    var testIndicatorsSection: some View {
        Section {
            ToggleRow(title: "Normal Activity Indicator", showsDebouncedIndicator: false, duration: $duration)
            ToggleRow(title: "Debounced Indicator", showsDebouncedIndicator: true, duration: $duration)
        } header: {
            Text("Test Indicators")
        } footer: {
            Text("Tap toggles for testing your activity indicators")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
