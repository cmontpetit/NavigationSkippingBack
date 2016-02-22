//
//  RootController.swift
//  NavigationSkippingBack
//
//  Created by Claude Montpetit on 16-02-21.
//  Copyright © 2016 Claude Montpetit. All rights reserved.
//

import UIKit

class RootController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        // tell theCreatorEditor that it will be in creating mode
        if let navController = segue.destinationViewController as? UINavigationController {
            if let controller = navController.topViewController as? CreatorEditorController {
                controller.creatorMode = true
            }
        }
    }
}
