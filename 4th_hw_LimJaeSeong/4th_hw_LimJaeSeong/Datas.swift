//
//  Datas.swift
//  4th_hw_LimJaeSeong
//
//  Created by 임재성 on 4/9/25.
//

import Foundation
import SwiftUI

class Datas: ObservableObject {
    @Published var name: String
    @Published var account: String
    @Published var money: Int
    
    init(name: String = "이름", account: String = "계좌", money: Int = 0) {
        self.name = name
        self.account = account
        self.money = money
    }
}

class TData: Datas {}
class HData: Datas {}
