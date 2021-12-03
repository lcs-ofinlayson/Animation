//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
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
//canvas.translate(to: Point(x: canvas.width / 2,
         //                  y: canvas.height / 2))


/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

//Draw Triangles

canvas.fillColor = .orange

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


for xPosition in stride(from: 0, through: 400, by: 45){
for yPosition in stride(from: 200, through: 600, by: 45){
canvas.fillColor = Color(hue: 82, saturation: 15, brightness: 86, alpha: 100)

//Find out Position for Triangles
canvas.drawEllipse(at: Point(x: xPosition, y: yPosition ), width: 5, height: 5)
if xPosition - yPosition >= -157 {
canvas.fillColor = .yellow
} else {
canvas.fillColor = .white
}
var triangleVertices: [Point] = []
triangleVertices.append(Point(x: xPosition, y: yPosition ))
triangleVertices.append(Point(x: xPosition + 45, y: yPosition + 0))
triangleVertices.append(Point(x: xPosition + 45, y: yPosition + 45))
canvas.drawCustomShape(with: triangleVertices)
    
    }
}
    


let currentcolor = Color(hue: 15,
                         saturation: 81, brightness: 100, alpha: 100)

canvas.fillColor = currentcolor


//canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)




canvas.textColor = Color(hue: 0, saturation: 0, brightness: 80, alpha: 100)

canvas.drawText(message: "talking heads", at: Point(x: 40, y: 150), size: 40, kerning: 0)

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)


