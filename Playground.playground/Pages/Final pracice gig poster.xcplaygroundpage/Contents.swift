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
  //                         y: canvas.height / 2))



/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.fillColor = .black

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)







// Change the text colour and add the text
canvas.textColor = .white

canvas.drawText(message: "the velvet underground", at: Point(x: 10, y: 410), size: 30, kerning: 0)

canvas.drawText(message: "first apperance in london", at: Point(x: 25, y: 555), size: 8, kerning: 0)

canvas.drawText(message: "the london college of printing", at: Point(x: 25, y: 545), size: 8, kerning: 0)

canvas.drawText(message: "with spring and pollyfloskin", at: Point(x: 160, y: 555), size: 8, kerning: 0)

canvas.drawText(message: "plus the great western light show ", at: Point(x: 160, y: 545), size: 8, kerning: 0)

canvas.drawText(message: "thursday", at: Point(x: 310, y: 555), size: 8, kerning: 0)

canvas.drawText(message: "october 14 1971 / 8pm", at: Point(x: 310, y: 545), size: 8, kerning: 0)

// Change the line colour, and add lines
canvas.lineColor = .white

canvas.drawLine(from: Point(x: 0, y: 460), to: Point(x: 400, y: 460))

canvas.drawLine(from: Point(x: 0, y: 575), to: Point(x: 400, y: 575))



//Draw the arrows
canvas.fillColor = .white
var arrowVerticies: [Point] = []
arrowVerticies.append(Point(x: 0, y: 0))
arrowVerticies.append(Point(x: 70, y: 0))
arrowVerticies.append(Point(x: 70, y: 15))
arrowVerticies.append(Point(x: 25, y: 15))
arrowVerticies.append(Point(x: 80, y: 70))
arrowVerticies.append(Point(x: 70, y: 80))
arrowVerticies.append(Point(x: 15, y: 25))
arrowVerticies.append(Point(x: 15, y: 70))
arrowVerticies.append(Point(x: 0, y: 70))

canvas.drawCustomShape(with: arrowVerticies)








// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .white)


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
