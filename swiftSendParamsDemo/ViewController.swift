//
//  ViewController.swift
//  swiftSendParamsDemo
//
//  Created by james on 14-12-9.
//  Copyright (c) 2014年 woowen. All rights reserved.
//

import UIKit
import Foundation

protocol ParamsProtocol{
    //协议中得方法不能有结构体
    func returnParams(tmpStr: String)
}

class ViewController: UIViewController {

    var tmpString: String = String()
    
    //值传递2
    var paramsProtocolDelegate: ParamsProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //通过segue 进行值传递
    @IBAction func btn1Click(sender: AnyObject) {
        self.tmpString = "通过segue进行的值传递方式1"
        self.performSegueWithIdentifier("btn1", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "btn1"{
            var obj = segue.destinationViewController as btn1
            obj.tmpString = self.tmpString
        }
    }
    //定义一个方法给协议中得方法赋值
    //在viewController中实现方法,这样在btn1,btn2中就可以不用实现,帮他们2个实现了.这就是代理.
    func start(){
        self.tmpString = "通过delegate进行的值传递方式2"
        self.paramsProtocolDelegate?.returnParams(self.tmpString)
    }

    @IBAction func btn2Click(sender: AnyObject) {
        //点击跳转
        self.performSegueWithIdentifier("btn2", sender: self)
    }
}

