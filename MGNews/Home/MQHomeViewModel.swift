//
//  MQHomeViewModel.swift
//  MGNews
//
//  Created by zhai shuqing on 2019/8/1.
//  Copyright © 2019 yangmengge. All rights reserved.
//

import UIKit
import RxSwift

class MQHomeViewModel: MQBaseViewModel {
    
    let username = Variable("guest")
    //用户信息
    lazy var userinfo = {
        return self.username.asObservable()
            .map{ $0 == "hangge" ? "您是管理员" : "您是普通访客" }
            .share(replay: 1)
    }()
}
