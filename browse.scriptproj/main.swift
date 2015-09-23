#!/usr/bin/env diamond
//
//  main.swift
//  TemplateProject
//
//  Created by John Holdsworth on 18/09/2015.
//  Copyright © 2015 John Holdsworth. All rights reserved.
//

import Foundation
import Cocoa

if Process.argc < 2 {
    print( "Usage: \(Process.arguments[0]) <http://url..>" )
    exit(0)
}

NSApplicationMain( 0,  UnsafeMutablePointer<UnsafeMutablePointer<CChar>>(nil) )
