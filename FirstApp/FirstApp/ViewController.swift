//
//  ViewController.swift
//  FirstApp
//
//  Created by 包翎 on 2017/9/16.
//  Copyright © 2017年 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayedNumber : Double = 0
    
    struct numStack<Element> {
        var items = [Element]()
        mutating func push(_ item: Element) {
            items.append(item)
        }
        mutating func pop() -> Element {
            return items.removeLast()
        }
    }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

