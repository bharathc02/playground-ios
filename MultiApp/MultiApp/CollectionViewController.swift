//
//  CollectionViewController.swift
//  TableApp
//
//  Created by Chandramouli, Bharath Kumar on 10/19/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    @IBOutlet var numberCollection: UICollectionView!
    
    var numbersArray = ["1", "2", "3", "4"]
    var imagesArray = [
        UIImage(named: "1.jpg"),
        UIImage(named: "2.jpg"),
        UIImage(named: "3.jpg"),
        UIImage(named: "4.jpg")
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        
        numberCollection.delegate = self
        numberCollection.dataSource = self
    }

    override func viewDidAppear(_ animated: Bool) { 
//        numberCollection.delegate = self
//        numberCollection.dataSource = self
//        numberCollection.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return numbersArray.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCol", for: indexPath)
        let imageView = cell.viewWithTag(100) as! UIImageView
        imageView.image = imagesArray[indexPath.row]
        let imageLabel = cell.viewWithTag(101) as! UILabel
        imageLabel.text = numbersArray[indexPath.row]
        // Configure the cell
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showImage") {
            let indexPaths = self.numberCollection!.indexPathsForSelectedItems
            let indexPath = (indexPaths?[0])! as IndexPath
            let vc = segue.destination as! ImageViewController
            print(indexPath.row)
            print(imagesArray[indexPath.row])
            //            vc.myImage.image = imagesArray[indexPath.row]
            vc.imageObj = imagesArray[indexPath.row]
            vc.imageStr = numbersArray[indexPath.row]
        }
    }
    
//    override func collectionView

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
