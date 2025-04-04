//
//  bankData.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 4/3/25.
//

import Foundation

struct bankData: Identifiable {
    let id = UUID()
    var image: String
    var name: String
    var time: String
    var money: String
    var sum: String
}

extension bankData {
    static let sampleData: [[bankData]] = [
        [
            bankData(image: "kakaoT", name: "카카오 택시_0", time: "11:13", money: "-6,200원", sum: "38,841원"),
            bankData(image: "kakaoT", name: "카카오 택시 선승인", time: "11:00", money: "+6,900원", sum: "45,041원"),
            bankData(image: "kakaoT", name: "카카오 택시 선승인", time: "11:00", money: "-6,900원", sum: "38,141원")
        ],
        [
            bankData(image: "flexpc", name: "플렉스PC방", time: "22:44", money: "-5,500원", sum: "45,041원"),
            bankData(image: "flexpc", name: "플렉스PC방", time: "21:35", money: "-5,000원", sum: "50,541원"),
            bankData(image: "cu", name: "씨유한동대오석관점", time: "16:17", money: "-2,000원", sum: "55,541원"),
            bankData(image: "cu", name: "씨유한동대오석관점", time: "15:59", money: "-4,400원", sum: "57,541원"),
            bankData(image: "kakaoT", name: "카카오 택시_0", time: "10:00", money: "-7,000원", sum: "61,941원"),
            bankData(image: "kakaoT", name: "카카오 택시 선승인", time: "09:47", money: "+7,300원", sum: "68,941원"),
            bankData(image: "kakaoT", name: "카카오 택시 선승인", time: "09:47", money: "-7,300원", sum: "61,641원"),
            bankData(image: "kakaoT", name: "카카오 택시 선승인", time: "09:46", money: "+7,300원", sum: "68,941원"),
            bankData(image: "kakaoT", name: "카카오 택시 선승인", time: "09:46", money: "-7,300원", sum: "61,941원")
        ]
    ]
}
