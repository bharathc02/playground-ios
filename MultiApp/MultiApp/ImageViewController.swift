//
//  ImageViewController.swift
//  MultiApp
//
//  Created by Chandramouli, Bharath Kumar on 10/19/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imageStr: String?
    var imageObj: UIImage?
    var result:String = ""
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = imageStr
        myImage.image = imageObj
        print(result)
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
