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
                        //   y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */


//Draw Background

canvas.fillColor = Color(hue: 225, saturation: 57, brightness: 48, alpha: 100)

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

canvas.fillColor = Color(hue: 41, saturation: 64, brightness: 71, alpha: 100)

canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

// Write text

canvas.textColor = Color(hue: 225, saturation: 57, brightness: 48, alpha: 100)

canvas.drawText(message: "Drake", at: Point(x: 15, y: 460), size: 65, kerning: 0)

canvas.drawText(message: "August 21 2018", at: Point(x: 300, y: 570), size: 10, kerning: 0)

canvas.drawText(message: "Scotiabank arena", at: Point(x: 300, y: 550), size: 10, kerning: 0)

canvas.drawText(message: "Toronto, ON", at: Point(x: 300, y: 530), size: 10, kerning: 0)

canvas.drawText(message: "ft. Migos", at: Point(x: 20, y: 440), size: 20, kerning: 0)


// Draw circles

canvas.fillColor = Color(hue: 41, saturation: 64, brightness: 71, alpha: 100)


for verticalPosition in stride(from: 25,
                            through: 400,
                               by: 50) {
    
    for horizontalPosition in stride(from: 25,
                                     through: 400,
                                     by: 50) {
        horizontalPosition
        
      
        
        canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 45, height: 45) }



    // Draw circles

    for verticalPosition in stride(from: 25,
                                through: 400,
                                   by: 50) {
        
        for horizontalPosition in stride(from: 25,
                                         through: 400,
                                         by: 50) {
            horizontalPosition
            
          
            
            canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 45, height: 45) }

    }
}


// Curve example
canvas.drawAxes(withScale: true, by: 50, color: .black)
canvas.lineColor = .black
canvas.drawCurve(from: Point(x: 100, y: 250),
                 to: Point(x: 250, y: 250),
                 control1: Point(x: 75, y: 300),
                 control2: Point(x: 275, y: 300),
                 showControlPoints: true,
                 lineWidth: 2,
                 capStyle: .round)


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

