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



/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

canvas.highPerformance = true
//Draw Background

canvas.fillColor = Color(hue: 225, saturation: 57, brightness: 80, alpha: 100)

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

canvas.fillColor = Color(hue: 41, saturation: 64, brightness: 71, alpha: 100)

canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

// Write text

canvas.textColor = Color(hue: 225, saturation: 57, brightness: 58, alpha: 100)

canvas.drawText(message: "Drake", at: Point(x: 15, y: 460), size: 65, kerning: 0)

canvas.drawText(message: "August 21 2018", at: Point(x: 295, y: 570), size: 12, kerning: 0)

canvas.drawText(message: "Scotiabank arena", at: Point(x: 295, y: 550), size: 12, kerning: 0)

canvas.drawText(message: "Toronto, ON", at: Point(x: 295, y: 530), size: 12, kerning: 0)

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



        canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 48, height: 48) }



    // Draw circles

    for verticalPosition in stride(from: 25,
                                through: 400,
                                   by: 50) {

        for horizontalPosition in stride(from: 25,
                                         through: 400,
                                         by: 50) {
            horizontalPosition



            canvas.drawEllipse(at: Point(x: horizontalPosition, y: verticalPosition), width: 48, height: 48) }

    }
}


//Draw OVO owl
canvas.lineColor = Color(hue: 225, saturation: 57, brightness: 48, alpha: 100)

canvas.drawLine(from: Point(x: 140, y: 60), to: Point(x: 140, y: 70))
canvas.drawLine(from: Point(x: 140, y: 70), to: Point(x: 160, y: 70))
canvas.drawLine(from: Point(x: 140, y: 60), to: Point(x: 260, y: 60))
canvas.drawLine(from: Point(x: 260, y: 70), to: Point(x: 260, y: 60))
canvas.drawLine(from: Point(x: 260, y: 70), to: Point(x: 235, y: 70))
canvas.drawLine(from: Point(x: 235, y: 70), to: Point(x: 240, y: 100))
canvas.drawLine(from: Point(x: 240, y: 100), to: Point(x: 245, y: 100))
canvas.drawLine(from: Point(x: 245, y: 100), to: Point(x: 245, y: 110))
canvas.drawLine(from: Point(x: 245, y: 110), to: Point(x: 280, y: 80))
canvas.drawLine(from: Point(x: 280, y: 80), to: Point(x: 310, y: 78))
canvas.drawLine(from: Point(x: 310, y: 78), to: Point(x: 310, y: 90))
canvas.drawLine(from: Point(x: 310, y: 90), to: Point(x: 320, y: 80))


canvas.drawCurve(from: Point(x: 320, y: 80),
                 to: Point(x: 220, y: 240),
                 control1: Point(x: 345, y: 100),
                 control2: Point(x: 245, y: 280),
                 showControlPoints: false,
                 lineWidth: 3,
                 capStyle: .round)

// Draw inside of left leg
canvas.drawLine(from: Point(x: 170, y: 70), to: Point(x: 205, y: 100))
canvas.drawLine(from: Point(x: 205, y: 100), to: Point(x: 215, y: 95))
canvas.drawLine(from: Point(x: 160, y: 70), to: Point(x: 175, y: 70))
canvas.drawLine(from: Point(x: 185, y: 70), to: Point(x: 217, y: 100))
canvas.drawLine(from: Point(x: 205, y: 100), to: Point(x: 190, y: 135))
canvas.drawLine(from: Point(x: 218, y: 98), to: Point(x: 223, y: 103))


//Draw inside of right leg
canvas.drawLine(from: Point(x: 225, y: 72), to: Point(x: 230, y: 100))
canvas.drawLine(from: Point(x: 235, y: 70), to: Point(x: 225, y: 70))
canvas.drawLine(from: Point(x: 230, y: 100), to: Point(x: 222, y: 100))
canvas.drawLine(from: Point(x: 222, y: 100), to: Point(x: 210, y: 120))

canvas.drawLine(from: Point(x: 162, y: 70), to: Point(x: 242, y: 70))

//Draw front wing
canvas.drawCurve(from: Point(x: 210, y: 120),
                 to: Point(x: 130, y: 300),
                 control1: Point(x: 100, y: 200),
                 control2: Point(x: 110, y: 280),
                 showControlPoints: false,
                 lineWidth: 3,
                 capStyle: .round)

//Draw head
canvas.drawLine(from: Point(x: 130, y: 300), to: Point(x: 140, y: 290))
canvas.drawLine(from: Point(x: 140, y: 290), to: Point(x: 190, y: 290))
canvas.drawLine(from: Point(x: 190, y: 290), to: Point(x: 198, y: 300))

canvas.drawCurve(from: Point(x: 198, y: 300),
                 to: Point(x: 220, y: 240),
                 control1: Point(x: 218, y: 288),
                 control2: Point(x: 225, y: 250),
                 showControlPoints: false,
                 lineWidth: 3,
                 capStyle: .round)


//Draw middle wing
canvas.drawCurve(from: Point(x: 220, y: 240),
                 to: Point(x: 310, y: 85),
                 control1: Point(x: 200, y: 200),
                 control2: Point(x: 280, y: 70),
                 showControlPoints: false,
                 lineWidth: 3,
                 capStyle: .round)



//Draw eyes
canvas.fillColor = Color(hue: 225, saturation: 57, brightness: 48, alpha: 100)

canvas.drawEllipse(at: Point(x: 147, y: 260), width: 30, height: 30, borderWidth: 3)
canvas.drawEllipse(at: Point(x: 187, y: 260), width: 30, height: 30, borderWidth: 3)
canvas.drawLine(from: Point(x: 177, y: 260), to: Point(x: 170, y: 230))
canvas.drawLine(from: Point(x: 158, y: 260), to: Point(x: 170, y: 230))

canvas.fillColor = Color(hue: 41, saturation: 64, brightness: 71, alpha: 100)
canvas.drawEllipse(at: Point(x: 147, y: 260), width: 20, height: 20, borderWidth: 1)
canvas.drawEllipse(at: Point(x: 187, y: 260), width: 20, height: 20, borderWidth: 1)

canvas.fillColor = Color(hue: 225, saturation: 57, brightness: 48, alpha: 100)

canvas.drawEllipse(at: Point(x: 147, y: 260), width: 17, height: 17, borderWidth: 3)
canvas.drawEllipse(at: Point(x: 187, y: 260), width: 17, height: 17, borderWidth: 3)


canvas.drawCurve(from: Point(x: 220, y: 240),
                 to: Point(x: 119, y: 245),
                 control1: Point(x: 220, y: 200),
                 control2: Point(x: 120, y: 180),
                 showControlPoints: false,
                 lineWidth: 3,
                 capStyle: .round)


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

