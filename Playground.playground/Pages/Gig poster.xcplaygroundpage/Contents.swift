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
import Darwin

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
canvas.translate(to: Point(x: canvas.width / 400,
                           y: canvas.height / 600))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

    
    
// Making a loop
canvas.highPerformance = true
for someValue in stride(from: 1, through: 600, by: 1) {
    
    canvas.lineColor = Color(hue: 100 ,
                             saturation: 80, brightness: 0,
                             alpha: 100)
    
    canvas.drawLine(from: Point(x: 0, y: someValue), to: Point(x: 600, y: someValue))
    
}


for verticalPosition in stride(from: -40, through: 400, by: 40){
    
    for horizontalPosition in stride(from: -40, through: 400, by: 40) {
        canvas.fillColor = Color(hue: 100, saturation: 80, brightness: 80, alpha: 100)
        canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 36, height: 36)
     
        for mValue in stride(from: 1,
        through: 600,
        by: 1){

        let currentColor = Color(hue: 100,
        saturation: 80,
        brightness: 80,
        alpha: 100)
        canvas.lineColor = currentColor
        canvas.drawLine(from: Point (x: mValue, y: 400), to: Point (x: mValue, y: 600))

        }
        
        
        
    }
}
canvas.highPerformance = false
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
