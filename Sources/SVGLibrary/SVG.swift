//
//  SVG.swift
//  SierpinskiSwift
//
//  A class that can be used to generate
//  a basic SVG file.

import Foundation

open class SVG {
   
   var contents: String = ""
   
   public func contents_add(newString: String) {
        contents += newString
    }
    
    // Initialize the SVG file with commands that will create a
    // width x height canvas
    public init(width: UInt, height: UInt) {
      contents_add(newString: "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
      contents_add(newString: "<svg version=\"1.1\" baseProfile=\"full\" width=\(width) height=\(height)) xmlns=\"http://www.w3.org/2000/svg\">\n")
    }
    
   public func draw_line(x1: Int, y1: Int, x2: Int, y2: Int, color: String) {
      contents_add(newString: "<line x1=\(x1) y1=\(y1) x2=\(x2) y2=\(y2) stroke=\(color) />\n")
    }
    
   public func clear_graphics() {
       contents = ""
   }
   
    // Write the SVG file to disk
    public func write(filePath: String) {
      contents_add(newString: "</svg>\n");
      write(filePath: contents)
      // cleanup
      clear_graphics();
    }
}
