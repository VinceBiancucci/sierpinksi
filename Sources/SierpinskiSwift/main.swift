//
//  main.swift
//  SierpinskiSwift
//
//  Runs the main sierpinski algorithm.

import SVGLibrary

// Draw a triangle by drawing three lines in black
func draw_triangle(p1: Point, p2: Point, p3: Point) {
    draw_line(p1.x, p1.y, p2.x, p2.y, "black");
    draw_line(p2.x, p2.y, p3.x, p3.y, "black");
    draw_line(p3.x, p3.y, p1.x, p1.y, "black");
}

// Draw a triangle between the three points and then recursively draw
// three more triangles in each of the three corners of the first triangle.
func sierpinski(p1: Point, p2: Point, p3: Point, level: Int, figure: SVG) {
    if (level <= 0) { return; }
       draw_triangle(p1, p2, p3);
       sierpinski(p1, mid_point(p1, p2), mid_point(p1, p3), level - 1);
       sierpinski(p2, mid_point(p1, p2), mid_point(p2, p3), level - 1);
       sierpinski(p3, mid_point(p1, p3), mid_point(p2, p3), level - 1);
}

// Start the algorithm off using a 300x300 canvas and its largest triangle
// going across that canvas
func main() {
    let figure: SVG = SVG(width: 300, height: 300)
    let p1: Point = (0, 300)
    let p2: Point = (150, 0)
    let p3: Point = (300, 300)
    sierpinski(p1: p1, p2: p2, p3: p3, level: 5, figure: figure)
    figure.write(filePath: "sierpinski.svg")
}

main()
