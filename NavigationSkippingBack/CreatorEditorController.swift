//
//  ViewController.swift
//  NavigationSkippingBack
//
//  Created by Claude Montpetit on 16-02-21.
//  Copyright © 2016 Claude Montpetit. All rights reserved.
//

import UIKit

class CreatorEditorController: UIViewController {

    var backFromViewer = false
    var creatorMode = false
    
    // Save button set as action, will dismiss and get back
    @IBOutlet /* weak */ var saveButton: UIBarButtonItem!
    
    // createButton is performing segue to viewer
    @IBOutlet /* weak */ var createButton: UIBarButtonItem!
    
    override func viewWillAppear(animated: Bool) {
        
        if (creatorMode) {
            
            self.title = "Create"
            
            // only show createButton
            self.navigationItem.rightBarButtonItems = [createButton]
            
            // If back from viewer, no need to re-show the creation view
            if (backFromViewer) {
                self.dismissViewControllerAnimated(false, completion: {})
                backFromViewer = false
            }
        } else {

            self.title = "Edit"

            // use the save button
            self.navigationItem.rightBarButtonItems = [saveButton]
        }
    }
    
    @IBAction func onSave(sender: AnyObject) {
        
        // This only occurs in edit mode
        assert(!creatorMode)

        // Saving, do whatever you'd do saving
        onCancel(sender)
    }
    
    @IBAction func onCancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // This only occurs in createMode
        assert(creatorMode)

        // Set back button title of next segue'd view to Root
        // since we won't show this again
        self.navigationItem.backBarButtonItem!.title = "Root"

        // Set the flag that will indicate that we are back from the viewer
        backFromViewer = true
    }
}

