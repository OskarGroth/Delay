//
//  AppDelegate.swift
//  Delay
//
//  Created by Oskar Groth on 2020-05-25.
//  Copyright © 2020 Oskar Groth. All rights reserved.
//

import Cocoa
import Metal

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let task = Process()
        task.launchPath = "/bin/echo"
        task.arguments = ["hello world"]
        let start = Date()
        
        task.launch()
        task.waitUntilExit()
        let alert = NSAlert()
        alert.messageText = "task finished in \(Date().timeIntervalSince(start))"
        alert.runModal()
        NSApp.terminate(self)
    }
}

class SomeClassThatIsNeverInitialized {
    let neverUsed = MTLDeviceNotificationName.wasAdded
}
