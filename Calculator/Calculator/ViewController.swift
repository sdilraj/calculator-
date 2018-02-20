
import UIKit

class ViewController: UIViewController {
    var showOnScreen:Double = 0;
    var savedNumber: Double = 0;
    var operation = 0;
    var calculating = false
    @IBOutlet weak var labels: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if calculating == true {
            labels.text = String(sender.tag - 1)
            showOnScreen = Double(labels.text!)!
            calculating = false
        }
        else {
        labels.text = labels.text! + String(sender.tag - 1)
        showOnScreen = Double(labels.text!)!
        }
        
    }
    
    @IBAction func functions(_ sender: UIButton) {
        if labels.text != "" && sender.tag != 11 && sender.tag != 16
        {
            savedNumber = Double(labels.text!)!
            
            if sender.tag == 12 // substraction
            {
                labels.text = "-";
            }
                
            else if sender.tag == 13 // addition
            {
                labels.text = "+";
            }
                
            else if sender.tag == 14 // division
            {
                labels.text = "/";
            }
                
            else if sender.tag == 15 // multiply
            {
                labels.text = "x";
            }
            
             calculating = true;
            operation = sender.tag
            
            
        }
        
        else if sender.tag == 16
        {
            
            
            if operation == 12
            {
                labels.text = String(savedNumber - showOnScreen)
            }
        
            else if operation == 13
            {
                labels.text = String(savedNumber + showOnScreen)
            }
        
            else if operation == 14
            {
                labels.text = String(savedNumber / showOnScreen)
            }
                
            else if operation == 15
            {
                labels.text = String(savedNumber * showOnScreen)
            }
            
            
        }
        else if sender.tag == 11
        {
            labels.text = ""
            savedNumber = 0;
            showOnScreen = 0;
            operation = 0;
            
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

