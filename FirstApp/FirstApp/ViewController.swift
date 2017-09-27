//
//  ViewController.swift
//
//  @Name:Caculator
//  @Author:Ling Bao
//  @StudentID:300901785
//  @Version: 0.1
//

import UIKit

class ViewController: UIViewController {
    //Build a stack
//    struct Stack<Element>  {
//        fileprivate var array: [Element] = []
//        
//        mutating func push(_ element: Element) {
//            array.append(element)
//        }
//        
//        mutating func pop() -> Element? {
//            return array.popLast()
//        }
//        
//        func peek() -> Element? {
//            return array.last
//        }
//        public var count: Int {
//            return array.count
//        }
//        mutating func clear() -> Element {
//            return array.removeAll() as! Element
//        }
//    }
//    var numStack = Stack<Double>()
//    var operatorStack = Stack<String>()
    var displayedNumber : Double = 0 //Define a number to store the label number
    var number1 : Double = 0//Define the first number
    var addOperation = false
    var doOperation = 0

    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if addOperation == true{
            label.text = self.label.text! + String(sender.tag)
            displayedNumber = Double(label.text!)!
            addOperation = false
        }else{
        label.text = self.label.text! + String(sender.tag)
        displayedNumber = Double(label.text!)!
        }
    }
    
    @IBAction func operators(_ sender: UIButton) {
        

        //Clear function
        if sender.tag == 10{
        label.text = ""
        number1 = 0
        displayedNumber = 0
        addOperation = false
        }
        //+/- function
        if sender.tag == 11{
            if label.text == ""{
                label.text = ""
            }else{
                label.text = String(0-Double(label.text!)!)
            }
            //numStack.push(Double(label.text!) ?? 0)
            //print(numStack.array)
        }
        if sender.tag == 12{
            if label.text == ""{
                label.text = ""
            }else{
                label.text = String(Double(label.text!)!/100)
            }
            //numStack.push(Double(label.text!) ?? 0)
            //print(numStack.array)
        }
        //Add
        if sender.tag == 13{
            number1 = Double(label.text!)!
            label.text = ""
            addOperation = true
            doOperation = sender.tag
            }
        //Minus
        if sender.tag == 14{
            number1 = Double(label.text!)!
            label.text = ""
            addOperation = true
            doOperation = sender.tag
        }
        //Multiply
        if sender.tag == 15{
            number1 = Double(label.text!)!
            label.text = ""
            addOperation = true
            doOperation = sender.tag
        }
        //Divide
        if sender.tag == 16{
            number1 = Double(label.text!)!
            label.text = ""
            addOperation = true
            doOperation = sender.tag
        }
        //Equal Button do caculating
        if sender.tag == 17{
            if doOperation == 13{
                label.text = String(number1 + displayedNumber)
            }
            if doOperation == 14{
                label.text = String(number1 - displayedNumber)
            }
            if doOperation == 15{
                label.text = String(number1 * displayedNumber)
            }
            if doOperation == 16{
                if displayedNumber != 0{
                label.text = String(number1 / displayedNumber)
                }else{
                    label.text = "Error"
                }
            }
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

