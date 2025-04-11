//
//  accountData.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 4/9/25.
//

import SwiftUI

struct accountData: Identifiable {
    let id = UUID()
    var image: String
    var name: String
    var account: String
    var star: String
}

extension accountData {
    static let sampleData: [[accountData]] = [
        [
            accountData(image: "hana2", name: "WINGO통장", account: "하나은행157-891652-62107", star: "star"),
            accountData(image: "samsung", name: "종합매매", account: "삼성증권7112898902-01", star: "star")
        ],
        [
            accountData(image: "kb2", name: "김정희", account: "kb국민96314175848", star: "star2"),
            accountData(image: "kakao2", name: "내입출금통장", account: "카카오뱅크3333-20-8455642", star: "star2"),
            accountData(image: "ibk2", name: "김래언", account: "IBK기업286-104115-01-019", star: "star2"),
            accountData(image: "kb2", name: "김정희", account: "kb국민96314175848", star: "star2"),
            accountData(image: "kakao2", name: "내입출금통장", account: "카카오뱅크3333-20-8455642", star: "star2"),
            accountData(image: "ibk2", name: "김래언", account: "IBK기업286-104115-01-019", star: "star2")
        ]
    ]
}
