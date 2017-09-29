//
//  AppDelegate.swift
//  DateCode
//
//  Created by 村上晋太郎 on 2017/09/29.
//  Copyright © 2017年 村上晋太郎. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let format = "yyMMdd"
        
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let text = formatter.string(from: now)
        
        print(text)
        
        let board = NSPasteboard.general
        board.clearContents()
        board.setString(text, forType: .string)
        
        exit(0)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

