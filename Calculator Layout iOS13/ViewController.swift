//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit


enum Operation:String{
    
    case Add = "+"
    case Subtract = "-"
    case Multiply = "*"
    case Divide = "/"
    case Square = "^2"
    case Cube = "^3"
    case Null = "Null"
}

class ViewController: UIViewController {

    
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var runningNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation:Operation = .Null
    
    
    
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var PlusMinus: UIButton!
    @IBOutlet weak var Percentage: UIButton!
    @IBOutlet weak var Divide: UIButton!
    @IBOutlet weak var Seven: UIButton!
    @IBOutlet weak var Eight: UIButton!
    @IBOutlet weak var Nine: UIButton!
    @IBOutlet weak var Mul: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var divide2: UIButton!
    @IBOutlet weak var plusMinus2: UIButton!
    @IBOutlet weak var percentage2: UIButton!
    @IBOutlet weak var Clear2: UIButton!
    @IBOutlet weak var mul2: UIButton!
    @IBOutlet weak var nine2: UIButton!
    @IBOutlet weak var eight2: UIButton!
    @IBOutlet weak var seven2: UIButton!
    @IBOutlet weak var minus2: UIButton!
    @IBOutlet weak var six2: UIButton!
    @IBOutlet weak var five2: UIButton!
    @IBOutlet weak var four2: UIButton!
    @IBOutlet weak var plus2: UIButton!
    @IBOutlet weak var three2: UIButton!
    @IBOutlet weak var second2: UIButton!
    @IBOutlet weak var one2: UIButton!
    @IBOutlet weak var equal2: UIButton!
    @IBOutlet weak var dot2: UIButton!
    @IBOutlet weak var zero2: UIButton!
    @IBOutlet weak var mr: UIButton!
    @IBOutlet weak var mMinus: UIButton!
    @IBOutlet weak var mPlus: UIButton!
    @IBOutlet weak var mc: UIButton!
    @IBOutlet weak var closeBracket: UIButton!
    @IBOutlet weak var openBraces: UIButton!
    @IBOutlet weak var tenPower: UIButton!
    @IBOutlet weak var ePower: UIButton!
    @IBOutlet weak var xPower: UIButton!
    @IBOutlet weak var xCube: UIButton!
    @IBOutlet weak var xSquare: UIButton!
    @IBOutlet weak var secondPower: UIButton!
    @IBOutlet weak var oneByX: UIButton!
    @IBOutlet weak var squareRoot: UIButton!
    @IBOutlet weak var cubeRoot: UIButton!
    @IBOutlet weak var ythRoot: UIButton!
    @IBOutlet weak var naturalRoot: UIButton!
    @IBOutlet weak var logBase10: UIButton!
    @IBOutlet weak var factorial: UIButton!
    @IBOutlet weak var sin: UIButton!
    @IBOutlet weak var cos: UIButton!
    @IBOutlet weak var tan: UIButton!
    @IBOutlet weak var exp: UIButton!
    @IBOutlet weak var EE: UIButton!
    @IBOutlet weak var Rad: UIButton!
    @IBOutlet weak var sinInverse: UIButton!
    @IBOutlet weak var cosInverse: UIButton!
    @IBOutlet weak var tanInverse: UIButton!
    @IBOutlet weak var Pi: UIButton!
    @IBOutlet weak var Rand: UIButton!
    
    
    
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
        if runningNumber.count <= 8{
            runningNumber += "\(sender.tag)"
            outputLabel.text = runningNumber
        }
        
    }
    
    @IBAction func allClearPressed(_ sender: UIButton) {
        
        runningNumber = ""
        leftValue = ""
        rightValue = ""
        result = ""
        currentOperation = .Null
        outputLabel.text = "0"
    }
    
    @IBAction func dotPressed(_ sender: UIButton) {
        
        if runningNumber.count <= 7{
            runningNumber += "."
            outputLabel.text = runningNumber
        }
        
    }
    
    
    @IBAction func equalPressed(_ sender: UIButton) {
        
        operation(operation: currentOperation)
    }
    
    @IBAction func addPressed(_ sender: Any) {
        operation(operation: .Add)
        
    }
    
    @IBAction func minusPressed(_ sender: Any) {
        operation(operation: .Subtract)
    }
    

    @IBAction func mulPressed(_ sender: Any) {
        operation(operation: .Multiply)
    }
    
    @IBAction func DividePressed(_ sender: UIButton) {
        operation(operation: .Divide)
    }
    
    @IBAction func SquarePressed(_ sender: UIButton) {
        currentOperation = .Square
        operation(operation: .Square)
    }
    
    @IBAction func CubePressed(_ sender: UIButton) {
        currentOperation = .Cube
        operation(operation: .Cube)
    }
    
    
    func operation(operation : Operation)
    {
         if currentOperation == .Square{
            result = "\( Double(runningNumber)! * Double(runningNumber)! )"
            
            runningNumber = result
            
            if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0){
                result = "\(Int(Double(result)!))"
            }
            
            outputLabel.text = result
        }
         
        else if currentOperation == .Cube{
            result = "\( Double(runningNumber)! * Double(runningNumber)! * Double(runningNumber)! )"
            
            runningNumber = result
            
            if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0){
                result = "\(Int(Double(result)!))"
            }
            
            outputLabel.text = result
        }
         
        else
        if currentOperation != .Null
        {
            if runningNumber != ""{
                rightValue = runningNumber
                runningNumber = ""
                
                if currentOperation == .Add{
                    result = "\( Double(leftValue)! + Double(rightValue)! )"
                }
                else if currentOperation == .Subtract{
                    result = "\( Double(leftValue)! - Double(rightValue)! )"
                }
                else if currentOperation == .Multiply{
                    result = "\( Double(leftValue)! * Double(rightValue)! )"
                }
                else if currentOperation == .Divide{
                    result = "\( Double(leftValue)! / Double(rightValue)! )"
                }
                
                leftValue = result
                
                if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0){
                    result = "\(Int(Double(result)!))"
                }
                outputLabel.text = result
            }
            currentOperation = operation
            
        }
        
        
        else{
            
            leftValue = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputLabel.text = "0"
        config()
        // Do any additional setup after loading the view.
    }

    

    func config()
    {
        
        CButton.layer.cornerRadius = 0.5 * CButton.bounds.size.width
        CButton.clipsToBounds = true
        
        PlusMinus.layer.cornerRadius = 0.5 * PlusMinus.bounds.size.width
        PlusMinus.clipsToBounds = true
        
        Percentage.layer.cornerRadius = 0.5 * Percentage.bounds.size.width
        Percentage.clipsToBounds = true
        
        Divide.layer.cornerRadius = 0.5 * Divide.bounds.size.width
        Divide.clipsToBounds = true
        
        Seven.layer.cornerRadius = 0.5 * Seven.bounds.size.width
        Seven.clipsToBounds = true
        
        Eight.layer.cornerRadius = 0.5 * Eight.bounds.size.width
        Eight.clipsToBounds = true
        
        Nine.layer.cornerRadius = 0.5 * Nine.bounds.size.width
        Nine.clipsToBounds = true
        
        Mul.layer.cornerRadius = 0.5 * Mul.bounds.size.width
        Mul.clipsToBounds = true
        
        four.layer.cornerRadius = 0.5 * four.bounds.size.width
        four.clipsToBounds = true
        
        five.layer.cornerRadius = 0.5 * five.bounds.size.width
        five.clipsToBounds = true
        
        six.layer.cornerRadius = 0.5 * six.bounds.size.width
        six.clipsToBounds = true
        
        minus.layer.cornerRadius = 0.5 * minus.bounds.size.width
        minus.clipsToBounds = true
        
        one.layer.cornerRadius = 0.5 * one.bounds.size.width
        one.clipsToBounds = true
        
        two.layer.cornerRadius = 0.5 * two.bounds.size.width
        two.clipsToBounds = true
        
        three.layer.cornerRadius = 0.5 * three.bounds.size.width
        three.clipsToBounds = true
        
        plus.layer.cornerRadius = 0.5 * plus.bounds.size.width
        plus.clipsToBounds = true
        
        zero.layer.cornerRadius = 0.25 * zero.bounds.size.width
        zero.clipsToBounds = true
        
        
        dot.layer.cornerRadius = 0.5 * dot.bounds.size.width
        dot.clipsToBounds = true
        
        equal.layer.cornerRadius = 0.5 * equal.bounds.size.width
        equal.clipsToBounds = true
        
        
        Clear2.layer.cornerRadius = 0.5 * Clear2.bounds.size.width
        Clear2.clipsToBounds = true
        
        plusMinus2.layer.cornerRadius = 0.5 * plusMinus2.bounds.size.width
        plusMinus2.clipsToBounds = true
        
        percentage2.layer.cornerRadius = 0.5 * percentage2.bounds.size.width
        percentage2.clipsToBounds = true
        
        divide2.layer.cornerRadius = 0.5 * divide2.bounds.size.width
        divide2.clipsToBounds = true
        
        seven2.layer.cornerRadius = 0.5 * seven2.bounds.size.width
        seven2.clipsToBounds = true
        
        eight2.layer.cornerRadius = 0.5 * eight2.bounds.size.width
        eight2.clipsToBounds = true
        
        nine2.layer.cornerRadius = 0.5 * nine2.bounds.size.width
        nine2.clipsToBounds = true
        
        four2.layer.cornerRadius = 0.5 * four2.bounds.size.width
        four2.clipsToBounds = true
        
        mul2.layer.cornerRadius = 0.5 * mul2.bounds.size.width
        mul2.clipsToBounds = true
        
        five2.layer.cornerRadius = 0.5 * five2.bounds.size.width
        five2.clipsToBounds = true
        
        six2.layer.cornerRadius = 0.5 * six2.bounds.size.width
        six2.clipsToBounds = true
        
        minus2.layer.cornerRadius = 0.5 * minus2.bounds.size.width
        minus2.clipsToBounds = true
        
        one2.layer.cornerRadius = 0.5 * one2.bounds.size.width
        one2.clipsToBounds = true
        
        second2.layer.cornerRadius = 0.5 * second2.bounds.size.width
        second2.clipsToBounds = true
        
        three2.layer.cornerRadius = 0.5 * three2.bounds.size.width
        three2.clipsToBounds = true
        
        plus2.layer.cornerRadius = 0.5 * plus2.bounds.size.width
        plus2.clipsToBounds = true
        
        Rand.layer.cornerRadius = 0.5 * Rand.bounds.size.width
        Rand.clipsToBounds = true
        
        zero2.layer.cornerRadius = 0.5 * zero2.bounds.size.width
        zero2.clipsToBounds = true
        
        dot2.layer.cornerRadius = 0.5 * dot2.bounds.size.width
        dot2.clipsToBounds = true
        
        equal2.layer.cornerRadius = 0.5 * equal2.bounds.size.width
        equal2.clipsToBounds = true
        
        Pi.layer.cornerRadius = 0.5 * Pi.bounds.size.width
        Pi.clipsToBounds = true
        
        mr.layer.cornerRadius = 0.5 * mr.bounds.size.width
        mr.clipsToBounds = true
        
        mPlus.layer.cornerRadius = 0.5 * mPlus.bounds.size.width
        mPlus.clipsToBounds = true
        
        mMinus.layer.cornerRadius = 0.5 * mMinus.bounds.size.width
        mMinus.clipsToBounds = true
        
        mPlus.layer.cornerRadius = 0.5 * mPlus.bounds.size.width
        mPlus.clipsToBounds = true
        
        mc.layer.cornerRadius = 0.5 * mc.bounds.size.width
        mc.clipsToBounds = true
        
        closeBracket.layer.cornerRadius = 0.5 * closeBracket.bounds.size.width
        closeBracket.clipsToBounds = true
        
        openBraces.layer.cornerRadius = 0.5 * openBraces.bounds.size.width
        openBraces.clipsToBounds = true
        
        secondPower.layer.cornerRadius = 0.5 * secondPower.bounds.size.width
        secondPower.clipsToBounds = true
        
        xPower.layer.cornerRadius = 0.5 * xPower.bounds.size.width
        equal.clipsToBounds = true
        
        xSquare.layer.cornerRadius = 0.5 * xSquare.bounds.size.width
        xSquare.clipsToBounds = true
        
        xCube.layer.cornerRadius = 0.5 * xCube.bounds.size.width
        xCube.clipsToBounds = true
        
        ePower.layer.cornerRadius = 0.5 * ePower.bounds.size.width
        ePower.clipsToBounds = true
        
        tenPower.layer.cornerRadius = 0.5 * tenPower.bounds.size.width
        tenPower.clipsToBounds = true
        
        oneByX.layer.cornerRadius = 0.5 * oneByX.bounds.size.width
        oneByX.clipsToBounds = true
        
        squareRoot.layer.cornerRadius = 0.5 * squareRoot.bounds.size.width
        squareRoot.clipsToBounds = true
        
        cubeRoot.layer.cornerRadius = 0.5 * cubeRoot.bounds.size.width
        cubeRoot.clipsToBounds = true
        
        ythRoot.layer.cornerRadius = 0.5 * ythRoot.bounds.size.width
        ythRoot.clipsToBounds = true
        
        naturalRoot.layer.cornerRadius = 0.5 * naturalRoot.bounds.size.width
        naturalRoot.clipsToBounds = true
        
        logBase10.layer.cornerRadius = 0.5 * logBase10.bounds.size.width
        logBase10.clipsToBounds = true
        
        factorial.layer.cornerRadius = 0.5 * factorial.bounds.size.width
        factorial.clipsToBounds = true
        
        sin.layer.cornerRadius = 0.5 * sin.bounds.size.width
        sin.clipsToBounds = true
        
        cos.layer.cornerRadius = 0.5 * cos.bounds.size.width
        cos.clipsToBounds = true
        
        tan.layer.cornerRadius = 0.5 * tan.bounds.size.width
        tan.clipsToBounds = true
        
        exp.layer.cornerRadius = 0.5 * exp.bounds.size.width
        exp.clipsToBounds = true
        
        EE.layer.cornerRadius = 0.5 * EE.bounds.size.width
        EE.clipsToBounds = true
        
        Rad.layer.cornerRadius = 0.5 * Rad.bounds.size.width
        Rad.clipsToBounds = true
        
        sinInverse.layer.cornerRadius = 0.5 * sinInverse.bounds.size.width
        sinInverse.clipsToBounds = true
        
        cosInverse.layer.cornerRadius = 0.5 * cosInverse.bounds.size.width
        cosInverse.clipsToBounds = true
        
        tanInverse.layer.cornerRadius = 0.5 * tanInverse.bounds.size.width
        tanInverse.clipsToBounds = true
        
        Pi.layer.cornerRadius = 0.5 * Pi.bounds.size.width
        Pi.clipsToBounds = true
        
        
    }
 
 
}

