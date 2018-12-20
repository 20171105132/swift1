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
    var a=[String]()
    var i:Int=0
    var sum:Int=0
    var flag:Int=0
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var minimum: UITextField!
    
    @IBOutlet weak var maximum: UITextField!
    
    @IBOutlet weak var average: UITextField!
    
    @IBOutlet weak var large_small: UITextField!
    
    @IBOutlet weak var small_large: UITextField!
    
    @IBAction func button1(_ sender: Any) {
        input.text=input.text!+"1"
    }
    
    @IBAction func button2(_ sender: Any) {
        input.text=input.text!+"2"
        
    }
    
    @IBAction func button3(_ sender: Any) {
        input.text=input.text!+"3"
        
    }
    
    @IBAction func button4(_ sender: Any) {
        input.text=input.text!+"4"
        
    }
    
    @IBAction func button5(_ sender: Any) {
        input.text=input.text!+"5"
       
    }
    
    @IBAction func button6(_ sender: Any) {
        input.text=input.text!+"6"
       
    }
    
    @IBAction func button7(_ sender: Any) {
        input.text=input.text!+"7"
      
    }
    
    @IBAction func button8(_ sender: Any) {
        input.text=input.text!+"8"
       
    }
    
    @IBAction func button9(_ sender: Any) {
        input.text=input.text!+"8"
    }
    
    @IBAction func min(_ sender: Any) {
        a=input.text!.components(separatedBy: " ")
        
        a.sort(by: {
            return $0 > $1
        })
        
        for index in a{
            s1.push(index)
        }
        minimum.text="\(s1.pop()!)"
    }
    
    @IBAction func max(_ sender: Any) {
        a=input.text!.components(separatedBy: " ")
        
        a.sort(by: {
            return $0 < $1
        })
        
        for index in a{
            s1.push(index)
        }
        maximum.text="\(s1.pop()!)"
    }
    
    @IBAction func average(_ sender: Any) {
        a=input.text!.components(separatedBy: " ")
        
        for index in a{
            s1.push(index)
            i=i+1
        }
        
        for _ in 1...i{
            flag=Int(s1.pop()!)!
            sum=flag+sum
        }
         average.text="\(sum/i)"
    }
    
    @IBAction func large_small(_ sender: Any) {
        a=input.text!.components(separatedBy: " ")
        
        a.sort(by: {
            return $0 > $1
        })
        
        large_small.text="\(a)"
    
    }
    
    @IBAction func small_large(_ sender: Any) {
        a=input.text!.components(separatedBy: " ")
        
        a.sort(by: {
            return $0 < $1
        })
        
        small_large.text="\(a)"
    }
}

