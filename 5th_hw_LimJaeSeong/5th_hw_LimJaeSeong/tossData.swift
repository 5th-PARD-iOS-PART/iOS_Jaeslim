//
//  tossData.swift
//  4th_hw_LimJaeSeong
//
//  Created by 임재성 on 3/29/25.
//

import SwiftUI

struct tossData: Identifiable {
    let id = UUID()
    var image: String
    var money: String
    var name: String
    var button: String
}

extension tossData {
    static let sampleData: [[tossData]] = [
        [
            tossData(image: "hana", money: "339,690원", name: "WINGO통장", button: "송금"),
            tossData(image: "toss", money: "38,841원", name: "토스뱅크통장", button: "송금"),
            tossData(image: "elec", money: "114원", name: "토스뱅크에 쌓인 이자", button: "지금받기"),
            tossData(image: "kbonk", money: "650원", name: "MY입출금통장", button: "송금"),
            tossData(image: "kb", money: "2,090원", name: "KB나라사랑우대통장", button: "송금"),
            tossData(image: "ibk", money: "29원", name: "보통예금(IBK나라사랑통장)", button: "송금"),
            tossData(image: "glob", money: "118원", name: "토스뱅크외화통장·2개", button: "송금"),
            tossData(image: "kakao", money: "0원", name: "입출금통장", button: "송금"),
            tossData(image: "ibk", money: "1,051원", name: "보통예금(IBK주거래생활금융통장)", button: "송금"),
            tossData(image: "invest", money: "15,257,990원", name: "투자모아보기·15개",button: "송금")
        ]
    ]
}
