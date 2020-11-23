//
//  ViewController.swift
//  Kankulyator
//
//  Created by student on 17.11.2020.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    var numsFromScreen: Double = 0
    var otherNum: Double = 0
    var perfomingMath = false
    var operation = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Result: UILabel!
    @IBAction func Nums(_ sender: UIButton) {
        Result.text = Result.text! + String(sender.tag)
               if Result.text!.contains("/ 0"){
                   Result.text = "Error bro!"
               }
    }
    @IBAction func Operation(_ sender: UIButton) {
        if Result.text != "" && sender.tag != 300 && sender.tag != 100{
            
                if sender.tag == 101{ //Прибавление
                    Result.text = Result.text! + " + "
                
                }
                else if sender.tag == 102{ //Вычитание
                    Result.text = Result.text! + " - "
                }
                else if sender.tag == 103{ //Умножение
                    Result.text = Result.text! + " * "
                }
                else if sender.tag == 104{ //Деление
                    Result.text = Result.text! + "* 1.0 / "
                }
                else if sender.tag == 200{//zapataya
                    Result.text = Result.text! + "."
                }
            
                    
                }
                else if sender.tag == 300{
                    Result.text = ""
                }
                else if sender.tag == 100{
                    let op_calc = NSExpression (format: Result.text!)
                    let realresurt = op_calc.expressionValue(with: nil, context: nil) as? Double
                    Result.text = String(realresurt!)
                }

            }
    }


