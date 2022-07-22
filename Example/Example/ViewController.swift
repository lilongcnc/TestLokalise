//
//  ViewController.swift
//  Example
//
//  Created by lilongcnc on 2022/7/22.
//

import UIKit


// NSLocalizedString(key, comment) 本质
//// NSlocalizeString 第一个参数是内容,根据第一个参数去对应语言的文件中取对应的字符串，第二个参数将会转化为字符串文件里的注释，可以传nil，也可以传空字符串@""。
//#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var aaa = Bundle.main.localizedString(forKey: "AAA", value:"", table: "")
        
        
        let label = UILabel(frame:CGRect(x:30,y:150,width:200,height:40))
        label.text = aaa
        view.addSubview(label)
        
    }


}

