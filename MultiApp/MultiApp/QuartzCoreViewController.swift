//
//  QuartzCoreViewController.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 10/21/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class QuartzCoreViewController: UIViewController {

    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var collision: UICollisionBehavior!
    
    @IBOutlet var square: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if self.square != nil {
            self.square.removeFromSuperview()
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createView(_ sender: UIButton) {
        let names:[String] = ["Add", "Keep Adding", "W"]
        
        if (self.view.subviews.count % 5 == 0) {
            sender.title(for: UIControlState.normal)
            let name:String = names[randomInt(min: 0, max: names.count)]
            sender.setTitle(name, for: UIControlState.normal)
        }
        
        sender.titleLabel?.numberOfLines = 1;
        sender.titleLabel?.adjustsFontSizeToFitWidth = true
        sender.titleLabel?.lineBreakMode = NSLineBreakMode.byClipping

        //        if self.square != nil {
//            self.square.removeFromSuperview()
//        }

        let x:Int = randomInt(min: Int(view.frame.minX), max: Int(view.frame.maxX));
        let y:Int = randomInt(min: Int(view.frame.minY), max: Int(view.frame.maxY));
        
        let square = UIView(frame: CGRect(x: x, y: y, width: 50, height: 50))

        square.backgroundColor = getRandomColor()
        square.layer.cornerRadius = square.bounds.size.width/2;
        square.layer.masksToBounds = true
        
        view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
//        gravity.setAngle(20, magnitude: 20)
        animator.addBehavior(gravity)
        
        collision = UICollisionBehavior(items: [square])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        let elas = UIDynamicItemBehavior(items: [square])
        elas.elasticity = 1
        self.animator.addBehavior(elas)

        self.view.bringSubview(toFront: sender)
        
    }

    func randomInt(min: Int, max:Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }
    
    func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
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
