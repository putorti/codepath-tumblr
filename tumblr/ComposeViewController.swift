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
        textButton.frame.origin.y = 626
        photoButton.frame.origin.y = 626
        quoteButton.frame.origin.y = 626
        linkButton.frame.origin.y = 752
        chatButton.frame.origin.y = 752
        videoButton.frame.origin.y = 752
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear!")
        
        UIView.animateWithDuration(0.25, animations: {
            self.textButton.frame.origin.y = 126;
            self.photoButton.frame.origin.y = 126;
            self.quoteButton.frame.origin.y = 126;
            self.linkButton.frame.origin.y = 252;
            self.chatButton.frame.origin.y = 252;
            self.videoButton.frame.origin.y = 252
        })
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
