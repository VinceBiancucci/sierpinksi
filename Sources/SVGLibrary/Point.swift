//
//  Point.swift
//  SierpinskiSwift
//
//  A tuple representing a basic point in two-dimensional space.
//

public typealias Point = (x: Int, y: Int)

// The midpoint between two Points.
public func midpoint(_ p1: Point, _ p2: Point) -> Point {
   // new x = x2 + x1 / 2
   // new y = y2 + y1 / 2
   let newX = (p1.x + p2.x) / 2
   let newY = (p1.y + p2.y) / 2
   let newPoint: Point = (newX, newY)
   return newPoint
}
