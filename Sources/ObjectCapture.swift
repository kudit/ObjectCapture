
public struct ObjectCapture {
    public var subsystem: String = "com.example.apple-samplecode.GuidedCapture"
    
    /// Typically you will provide the application ID as the `subsystem` string for logging purposes.
    public init(subsystem: String) {
        self.subsystem = subsystem
    }
}
