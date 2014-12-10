import UIKit

class btn2: UIViewController,ParamsProtocol {
    //该类需要遵守协议
    var tmpString: String = String()
    @IBOutlet weak var text2: UITextField!
    var obj = ViewController()
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        obj.paramsProtocolDelegate = self
        obj.start()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //遵守协议必须重新实现一下协议中得方法
    func returnParams(tmpStr: String) {
        self.text2.text = tmpStr
    }
    
}