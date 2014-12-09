import UIKit

class btn1: UIViewController {
    
    @IBOutlet weak var text1: UITextField!
    
    //这边需要定义一个变量
    var tmpString: String = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        //输出传递过来得值
        text1.text = self.tmpString
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}