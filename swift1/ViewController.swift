//
//  ViewController.swift
//  swift1
//
//  Created by zhangyue on 2018/12/13.
//  Copyright © 2018 zhangyue. All rights reserved.
//
struct Stack<T> {
    fileprivate var array: [T] = []
    
    public var count: Int {
        return array.count
    }
    public mutating func push(_ element: T) {
        array.append(element)
    }
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
}
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var s1=Stack<String>()
    var s2=Stack<String>()
    var b=String()
    var a=[String]()
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var minimum: UITextField!
    @IBOutlet weak var maximum: UITextField!
    @IBOutlet weak var average: UITextField!
    @IBOutlet weak var large_small: UITextField!
    @IBOutlet weak var small_large: UITextField!
    @IBAction func min(_ sender: Any) {
        a=input.text!.components(separatedBy: " ")
        for index in a{
            s1.push(index)
        }
        b=s1.pop()!
    }
    
    @IBAction func max(_ sender: Any) {
    }
    @IBAction func average(_ sender: Any) {
        
        
    }
}

