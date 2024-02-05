import SwiftUI
import ObjectCapture

@main
struct ObjectCaptureExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


struct ContentView: View {
    var oc = ObjectCapture(subsystem: "com.kudit.test")
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text(oc.subsystem)
        }
    }
}
