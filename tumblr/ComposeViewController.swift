//
//  ComposeViewController.swift
//  tumblr
//
//  Created by Jason Putorti on 2/28/16.
//  Copyright © 2016 Jason Putorti. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeModal(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear!")
        textButton.frame.origin.y = 526
        photoButton.frame.origin.y = 526
        quoteButton.frame.origin.y = 526
        linkButton.frame.origin.y = 652
        chatButton.frame.origin.y = 652
        videoButton.frame.origin.y = 652
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear!")
        /*textButton.frame.origin.y = 126
        photoButton.frame.origin.y = 126
        quoteButton.frame.origin.y = 126
        linkButton.frame.origin.y = 252
        chatButton.frame.origin.y = 252
        videoButton.frame.origin.y = 252*/
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
