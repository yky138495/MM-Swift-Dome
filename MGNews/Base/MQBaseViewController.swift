//
//  MQBaseViewController.swift
//  MGNews
//
//  Created by zhai shuqing on 2019/8/1.
//  Copyright © 2019 yangmengge. All rights reserved.
//

import UIKit

#if os(iOS)
import UIKit
typealias OSViewController = UIViewController
#elseif os(macOS)
import Cocoa
typealias OSViewController = NSViewController
#endif

class MQBaseViewController: OSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
