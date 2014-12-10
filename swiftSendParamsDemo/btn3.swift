import UIKit

class btn3: UIViewController{
    @IBOutlet weak var text3: UITextField!
    var base: baseClass = baseClass()
    var sign:String = String()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.sign = base.cacheGetString("sign")
        text3.text = self.sign
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}