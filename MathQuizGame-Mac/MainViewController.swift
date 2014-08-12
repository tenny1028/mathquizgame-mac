//
//  MainViewController.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/10/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {
	
	// IB Outlets
    @IBOutlet var output: NSTextView!
    @IBOutlet var input: NSTextField!
	@IBOutlet var window: NSWindow!
	
	// Constants
	let VERSION_NUMBER = 1.1
	let NAME = "MathQuizGame"
	let mainFont = NSFont(name: "Courier", size: 12)
	
	// Other properties
    
    @IBAction func userDidInput(sender: NSTextField) {
        enterText(sender.stringValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func awakeFromNib() {
        output.font = mainFont
		input.font = mainFont
		window.title = NAME
	}
	
	func enterText(inputText: String!){
        var outputText: String = output.string
        
        outputText += inputText
        outputText += "\n"
        
        output.string = outputText
        
        output.pageDown(self)
    }
}
