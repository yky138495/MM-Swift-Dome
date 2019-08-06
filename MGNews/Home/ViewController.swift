//
//  ViewController.swift
//  MGNews
//
//  Created by yangmengge on 2019/8/1.
//  Copyright © 2019 yangmengge. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Alamofire
import SwiftyJSON

class ViewController: MQBaseViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var userVM = MQHomeViewModel()
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        self.view?.backgroundColor = UIColor.white
        super.viewDidLoad()
        
        /*方法一*/
//        //将用户名与textField做双向绑定
//        userVM.username.asObservable().bind(to: textField.rx.text).disposed(by: disposeBag)
//        textField.rx.text.orEmpty.bind(to: userVM.username).disposed(by: disposeBag)
//
//        //将用户信息绑定到label上
//        userVM.userinfo.bind(to: label.rx.text).disposed(by: disposeBag)



        /*方法二*/
        //将用户名与textField做双向绑定
//        _ =  self.textField.rx.textInput <->  self.userVM.username
        
        //将用户信息绑定到label上
//        userVM.userinfo.bind(to: label.rx.text).disposed(by: disposeBag)
        
    }


    override func viewWillAppear(_ animated: Bool) {
        Alamofire.request("http://ip.360.cn/IPShare/info").responseJSON { response in
            print(response.request ?? "")  // 原始的URL请求
            print(response.response ?? "") // HTTP URL响应
            print(response.data ?? "")     // 服务器返回的数据
            print(response.result )   // 响应序列化结果，在这个闭包里，存储的是JSON数据
            
            let json = JSON(response.data)

//            let json = JSON(data: response.data!)
            print("JSON: \(json)")

            if let userName = json["ip"].string{
                print("userName: \(userName)")
//                self.textField.text = userName
            }
            
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//                textField.rx.text = JSON
//            }
        }
    }
}

