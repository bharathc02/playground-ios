//
//  ViewController.swift
//  TableApp
//
//  Created by Chandramouli, Bharath Kumar on 10/18/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var appleTable: UITableView!
    
    var numbersArray = ["1", "2", "3", "4"]
    var imagesArray = [
        UIImage(named: "1.jpg"),
        UIImage(named: "2.jpg"),
        UIImage(named: "3.jpg"),
        UIImage(named: "4.jpg")
    ]
    
    var refreshControl:UIRefreshControl?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appleTable.delegate = self
        appleTable.dataSource = self
    
        refreshControl = UIRefreshControl()
        
        refreshControl?.attributedTitle = NSAttributedString(string:"Loading")
        
        refreshControl?.addTarget(self, action: #selector(TableViewController.refresh), for: UIControlEvents.valueChanged)
        self.appleTable.addSubview(refreshControl!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func refresh() {
        numbersArray.append(String(numbersArray.count + 1))
        imagesArray.append(UIImage(named: "numbers.jpg"))
        self.appleTable.reloadData()
        self.refreshControl?.endRefreshing()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbersArray.count
    }

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let index:Int = indexPath.row + 1
//        collectionViewController.numbersArray.append(String(index))
//        let image = String(index) + ".jpg"
//        collectionViewController.imagesArray.append(UIImage(named: image)!)
        
//        self.navigationController?.pushViewController(collectionViewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showImage") {
            let indexPaths = self.appleTable!.indexPathsForSelectedRows
            let indexPath = (indexPaths?[0])! as IndexPath
            let vc = segue.destination as! ImageViewController
            print(indexPath.row)
            print(imagesArray[indexPath.row])
//            vc.myImage.image = imagesArray[indexPath.row]
            vc.imageObj = imagesArray[indexPath.row]
            vc.imageStr = numbersArray[indexPath.row]
        }
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let myCell:UITableViewCell = appleTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //myCell.textLabel?.text = numbersArray[indexPath.row]
        //myCell.imageView?.image = imagesArray[indexPath.row]
        //myCell.detailTextLabel?.text = "Awesome"
        
        let myCell:CustomCell = appleTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        myCell.mainImage1.image = imagesArray[indexPath.row]
        myCell.mainText1.text = numbersArray[indexPath.row]
        myCell.sideImage1.image = UIImage(named: "numbers.jpg")
        myCell.sideText1.text = "Numbers"

        return myCell
    }
    
}

