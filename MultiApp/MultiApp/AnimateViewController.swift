//
//  AnimateViewController.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 10/21/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class AnimateViewController: UIViewController {

    @IBOutlet var animateLabel: UILabel!
    @IBOutlet var animateView: UIView!
    
    @IBAction func animateStart(_ sender: UIButton) {
        self.animateLabel.alpha = 0.5
//        let scale = CGAffineTransform(scaleX: 2.0, y: 1.0)
//        let rotate = CGAffineTransform(rotationAngle: 30)
//        let transform = CGAffineTransform.identity
//        transform.scaledBy(x: 2.0, y: 1.0)
//        transform.rotated(by: 30)
        let transform = CGAffineTransform(scaleX: 2.0, y: 1.0).rotated(by: 30.0)
        animateView.transform = transform
        
//        UIView.animate(withDuration: 3.0, animations: {
//            () ->Void in self.animateLabel.alpha = 0.5
//        })
    }
    
    @IBAction func animateEnd(_ sender: UIButton) {
        self.animateLabel.alpha = 1.0
        animateView.transform = CGAffineTransform(scaleX: -3.0, y: -2.0)
//        UIView.animate(withDuration: 3.0, animations: {
//            () ->Void in self.animateLabel.alpha = 1.0
//        })
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        animateButton.alpha = 0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
