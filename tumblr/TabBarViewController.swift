//
//  TabBarViewController.swift
//  tumblr
//
//  Created by Jason Putorti on 2/28/16.
//  Copyright © 2016 Jason Putorti. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    var previousIndex: Int = 0
    var previousVC: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeBoard")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchBoard")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountBoard")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingBoard")
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        tabPush(buttons[selectedIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func tabPush(sender: UIButton) {
        
        previousIndex = selectedIndex
        buttons[previousIndex].selected = false
        sender.selected = true
        
        print("last", previousIndex)
        print(sender.tag)
        
        selectedIndex = sender.tag
        previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
