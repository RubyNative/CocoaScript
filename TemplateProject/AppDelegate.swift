//
//  AppDelegate.swift
//  TemplateProject
//
//  Created by John Holdsworth on 19/09/2015.
//  Copyright © 2015 John Holdsworth. All rights reserved.
//

import Cocoa
import WebKit

class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var webView: WebView!

    let psc = PureSwiftClass()

    class func reloaded() {
        print( "\(Process.arguments[0]) reloaded: \(self)!!" )
    }

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        NSApp.applicationIconImage = NSImage( named:"Swift" )
        let url = NSURL( string: Process.arguments[1] )!
        webView.mainFrame.loadRequest( NSURLRequest( URL: url ) )
        NSApplication.sharedApplication().activateIgnoringOtherApps( true )
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
        psc.reloadTest()
    }

    func webView( aWebView: WebView, didReceiveTitle aTitle: String, forFrame frame: WebFrame ) {
        window.title = aTitle
    }

}

class PureSwiftClass {

    func reloadTest() {
        print( "bye.." )
    }
    
}
