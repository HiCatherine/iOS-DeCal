# Lab 1 : XcodeTutorial #

## General Overview ##
Welcome to your first iOS DeCal Lab!

There are three problems you'll be solving in this lab.

1. Defining Variables
2. Working with Optionals
3. View Controller Lifecycle + Breakpoints
4. Using the Debugger

Each time you finish a problem, open the storyboard, drag the entry point to the next view controller representing the next problem. 

For example, after problem 1, there will be a view marked "2" at the top right. You will drag the entry point (Arrow pointing inwards into the current view - marked "1" at the top) to that view controller and run the app (see image below).

![alt text](/README-images/lab1-1.png)

## Getting Started 

To begin this lab, clone this repository onto your own computer:
	
	git clone https://github.com/iosdecal/ios-decal-lab1

Once you've donwloaded the files onto your computer, open up the file **XcodeTour.xcodeproj**. If you've downloaded Xcode already, this will open up your project.

Before starting, it may be helpful to open the file **Main.storyboard** (found in your project navigator in Xcode) to see the layout of this lab before starting.

## question 1: Defining Variables ##
If you open up **DefineVariableViewController.swift**, you'll notice that there are two "TODO" sections. The goal of this problem is to define a variable that can be used to transfer data between view controllers (different screens within an app). 

In the `getTextToDisplay` method, there is a `formattedTextArray` input variable. In the `prepareForSegue` method (option + click on the method symbol to see its description), there is a `textToDisplay` property of `destinationVC` currently set to an empty array. Your goal is to make these two ends meet by making the `textToDisplay` property equal the value stored in `formattedTextArray`.

To see if you properly transferred the data, run your application. If you succeeded, move on to the next part of the lab by moving the entry point arrow (found in **Main.storyboard**) to the View Controller labeled "2".

## question 2: Working with Optionals ##
Run the app and read what's on the screen. When you press proceed, you'll see a button that says "Generate String". If you visit **OptionalsViewController.swift**, you'll see that there is a `returnStringAtRandom` function that returns a String? (Remember: ? means a variable can take on a nil value). If you click "Generate String" enough times, the app should crash. Look carefully at the code under the "TODO" and use your knowledge about optionals to find out why this is true.

If you can guarentee that passInNonOptional recieves a non-nil value, you should be able to spam the "generate string" button with no errors."

If you can press the "generate string" button multiple times with no errors, move on to the next part of the lab by moving the entry point arrow (found in Main.storyboard) to the View Controller labeled "3".

## question 3: Linking ViewControllers ##
### question 3: part 1 ###
![alt text](/README-images/controller.png)
![alt text](/README-images/inspector.png)
Run the app, and tap the "click me..." button. If you open up **Main.storyboard**, you'll notice the first screen you viewed has the class type **BoringViewController.swift** (Click on the bar over the corresponding View window and then select the identity inspector, both pictured above). If you tap on the view controller bar to the right of BoringViewController, you'll see no class is set! Currently there is no ViewController.swift file for the view controller in the Storyboard's attributes.

Setting the class of Storyboard view controller's allows us to programmatically interact with the UI elements in Interface Builder. If you look at **BoringViewController.swift**, for example, we are able to change the textcolor of the label programmatically, since we've created an outlet.

Your task:
- create a Swift file (File > New > File... > Cocoa Touch Class) for the View Controller in **Main.storyboard**. You may name it whatever you like.
- go back to **Main.storyboard**, and select the Q3 view controller with no class set. Set it's class type to the class you just created in the previous step (See step 3, if you are struggling [https://guides.codepath.com/ios/Creating-Custom-View-Controllers](https://guides.codepath.com/ios/Creating-Custom-View-Controllers))m
- create an outlet in your code for the label in this view controller. Then, in the viewDidLoad method, change the text of the label to "i am a view controller with a class set 😊"

If you passed this stage, move on to the next part of the lab by moving the entry point arrow (found in Main.storyboard) to the View Controller that says **Navigation Controller**.


## question 4: AutoLayout Intro ##
![alt text](/README-images/autolayout.png)

CalCentral is developing an iOS application for their beloved platform, but they've encountered a bug and need your help. For some reason, the Table View to display classes to add is misaligned! It looks good in the storyboard, but if you run it on a simulator it's off-center. We care about good design in this class, so let's set some constraints to make this look better!

Create constraints for the TableView object so that it looks like the image above (centered horizontally, equal widths to the screen and 20 points from the top layout guide). 

## check-off ##
Once you've finished the lab, you can check-off using this form https://goo.gl/forms/kVEIqkChKBthRRTM2. If you weren't able to finish before 8pm, make sure to let a TA know you attended (do not fill out the google form), and be sure to check-off next week at the beginning of lab.
