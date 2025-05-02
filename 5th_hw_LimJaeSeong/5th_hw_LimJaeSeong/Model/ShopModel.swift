//
//  ShopModel.swift
//  5th_hw_LimJaeSeong
//
//  Created by 임재성 on 5/1/25.
//

import Foundation

struct ShopModel : Identifiable {
    let id = UUID().uuidString
    let image : String
    let name : String
    let price : Int
    let retailprice : String
    let award : String
    let views : String
    let category : String
}
