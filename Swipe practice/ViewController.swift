//
//  ViewController.swift
//  Swipe practice
//
//  Created by jamespoyu on 2016/6/14.
//  Copyright © 2016年 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageList: [String] = ["picture1","picture2","picture3","picture4","picture5","picture6","picture7","picture8","picture9","picture10"]
    var count: Int = 0
    
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let tap = UITapGestureRecognizer(target: self, action: "tap:")
//        tap.numberOfTouchesRequired = 1
//        self.view.addGestureRecognizer(tap)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tap(sender: AnyObject) {
        print("tap")
    }
    
    @IBAction func swipeRight(sender: AnyObject) {
            
            if (count == 9){
                self.imageView.image = UIImage(named: imageList[count])
            } else{
                count += 1
                self.imageView.image = UIImage(named: imageList[count])
            }

    }
    
    
    @IBAction func swipeLeft(sender: AnyObject) {
        
        if (count == 0){
            self.imageView.image = UIImage(named: imageList[count])
        } else{
            count -= 1
            self.imageView.image = UIImage(named: imageList[count])
        }
            }
    
}

