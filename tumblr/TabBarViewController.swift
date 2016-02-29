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
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    var previousVC: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeBoard") // 0
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchBoard") // 1
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountBoard") // 2
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingBoard") // 3
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        tabPush(buttons[selectedIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func tabPush(sender: UIButton) {
        
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false
        
        previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
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
