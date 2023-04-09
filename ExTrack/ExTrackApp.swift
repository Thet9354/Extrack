//
//  ExTrackApp.swift
//  ExTrack
//
//  Created by Phoon Thet Pine on 5/4/23.
//

import Sentry
import SwiftUI
@main
struct ExTrackApp: App {
    init() {
            SentrySDK.start { options in
                if let dsn = Bundle.main.infoDictionary?["SENTRY_DSN"] as? String {
                    let fullDsn = "https://235a2548446845008aac4e0956f5c2ad@o4504961380253696.ingest.sentry.io/4504961385431040"
                    options.dsn = fullDsn
                }
                if let env = Bundle.main.infoDictionary?["SENTRY_ENVIRONMENT"] as? String {
                    let debug = env.compare("development") == .orderedSame
                    options.debug = debug
                    options.environment = env
                }
                if let tracesSampleRate = Bundle.main.infoDictionary?["SENTRY_TRACES_SAMPLE_RATE"] as? String {
                    options.tracesSampleRate = NSNumber(value: Double(tracesSampleRate)!)
                }
                if let profilesSampleRate = Bundle.main.infoDictionary?["SENTRY_PROFILES_SAMPLE_RATE"] as? String {
                    options.profilesSampleRate = NSNumber(value: Double(profilesSampleRate)!)
                }
                
                options.enableAppHangTracking = true
                options.enableUserInteractionTracing = true
                options.attachViewHierarchy = true
            }
        }
        
        var body: some Scene {
            WindowGroup {
                ContentView()
            }
        }
}
