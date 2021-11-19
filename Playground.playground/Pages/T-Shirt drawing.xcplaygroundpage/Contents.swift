//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 900
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

p.penColor = .black

// Go back to origin
p.goToOrigin()

//Draw Outline
p.turn(degrees: 270)
p.goto(dx: -330, dy: 250)
p.addLine(distance: 500)
p.turn(degrees: 90)
p.addLine(distance: 660)
p.turn(degrees: 90)
p.addLine(distance: 500)
p.turn(degrees: 90)
p.addLine(distance: 660)

p.goToOrigin()
p.goto(dx: 320, dy: 250)
p.turn(degrees: 90)
p.addLine(distance: 500)
p.goToOrigin()
p.goto(dx: 320, dy: -200)
p.turn(degrees: 270)
p.addLine(distance: 40)
p.turn(degrees: 90)
p.addLine(distance: 40)
p.turn(degrees: 90)
p.addLine(distance: 40)
p.goToOrigin()
p.goto(dx: 300, dy: 250)
p.turn(degrees: 270)
p.addLine(distance: 500)
p.turn(degrees: 180)


p.goToOrigin()
p.thickness = 20
p.goto(dx: 320, dy: -250)
p.addLine(distance: 500)

for i in -3 ... 3 {
    p.goToOrigin()
    p.penColor = .white
    p.thickness = 20
    p.goto(dx: Double(40 * i)+20, dy: -250)
    p.addLine(distance: 500)
}
for i in -3 ... 3 {
    p.goToOrigin()
    p.penColor = .black
    p.thickness = 20
    p.goto(dx: Double(40 * i), dy: -250)
    p.addLine(distance: 500)
}
    
p.thickness = 1
p.goto(dx: -20, dy: 0)
p.addLine(distance: 500)

for _ in 1 ... 15 {
    p.penColor = .black
    p.turn(degrees: 180)
    p.goto(dx: -20, dy: 0)
    p.addLine(distance: 500)
}

for _ in 1 ... 15 {
    p.penColor = .black
    p.turn(degrees: 180)
    p.goto(dx: -20, dy: 0)
    p.addLine(distance: 500)
}
p.goToOrigin()





for _ in 1 ... 4 {
    
    canvas.fillColor = .white
    canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height:
    20)
    p.goto(dx: 20, dy: 0)
    canvas.fillColor = .black
    canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height: 20)
    p.goto(dx: 20, dy: 0)
    canvas.fillColor = .white
    canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height:
    20)
}



    
    p.goToOrigin()
    p.goto(dx: -200, dy: 100)
    canvas.fillColor = .white
    canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height:
    20)
    p.goto(dx: 20, dy: 0)
    canvas.fillColor = .black
    canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height: 20)
    p.goto(dx: 20, dy: 0)
    canvas.fillColor = .white
    canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height:
    20)


p.goToOrigin()
p.goto(dx: -160, dy: 100)
canvas.fillColor = .white
canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height:
20)
p.goto(dx: 20, dy: 0)
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height: 20)
p.goto(dx: 20, dy: 0)
canvas.fillColor = .white
canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height:
20)


p.goToOrigin()
p.goto(dx: 40, dy: -180)
for _ in 1 ... 4 {
canvas.fillColor = .white
canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height:
20)
p.goto(dx: 20, dy: 0)
canvas.fillColor = .black
canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height: 20)
p.goto(dx: 20, dy: 0)
canvas.fillColor = .white
canvas.drawRectangle(at: Point(x:20, y:60), width: 100, height:
20)
}

/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
