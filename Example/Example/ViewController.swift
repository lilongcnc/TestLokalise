//
//  ViewController.swift
//  Example
//
//  Created by lilongcnc on 2022/7/22.
//

import UIKit
import Lokalise

// NSLocalizedString(key, comment) 本质
//// NSlocalizeString 第一个参数是内容,根据第一个参数去对应语言的文件中取对应的字符串，第二个参数将会转化为字符串文件里的注释，可以传nil，也可以传空字符串@""。
//#define NSLocalizedString(key, comment) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]

class ViewController: UIViewController {
    var label : UILabel = UILabel();

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let aaa = Bundle.main.localizedString(forKey: "AAA", value:"", table: "")
        label = UILabel(frame:CGRect(x:30,y:150,width:200,height:40))
        label.text = aaa
        print("ViewController before update: \(aaa)")
        view.addSubview(label)
        
        
        NotificationCenter.default.addObserver(
             self,
             selector: #selector(updateUserInterface),
             name: NSNotification.Name.LokaliseDidUpdateLocalization,
             object: nil
         )
        
        var bbb = Lokalise.shared.localizedString(forKey: "AAA", value: "取不到 ", table: "tableName")
        debugPrint(bbb)
        
    }
    
    
    @objc func updateUserInterface() {
        
        let aaa = Bundle.main.localizedString(forKey: "AAA", value:"", table: "")
        print("ViewController Updated: \(aaa)")

        label.text = aaa

        // Update your interface in Swift
    }
    
}

