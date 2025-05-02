//
//  ShopViewModel.swift
//  5th_hw_LimJaeSeong
//
//  Created by 임재성 on 5/1/25.
//

import Foundation

class ShopViewModel: ObservableObject {
    @Published var shopList: [ShopModel] = []
    @Published var filteredShopList: [ShopModel] = []
    @Published var showSheet: Bool = false
    
    func toggleSheet(){
        showSheet.toggle()
    }
    
    func getShopMockData() -> [ShopModel]{
        let images : [String] = ["kiwi", "protein", "water", "tomato", "serum", "pajama", "ample", "hairoil", "omega", "fruit"]
        let names : [String] = ["[단독구매불가]압도적 당도 제스프리 루비레드키위&골드키위사...", "[보틀/파우치증정]프로티원 단백질 쉐이크 6종X2통 (곡물,딸기,...", "[오늘만]스파클 생수 500mL*60병/2L*24병", "[최초공개]한정수량 신품종 레몬 캔디 스테비아 방울토마토", "[단 하루 혜택/사은품]참존 베스트 오일세럼 4종 토스 단독구성/...", "[상+하의SET]시원하고 너무 편한 홈웨어 파자마 잠옷", "[5/1 단 하루]동국제약 기미&잡티 멜라캡처 앰플 pro 기획전", "[한정수량/마지막기회]라온느 블랙아르간 헤어오일 기획전", "[종근당건강]프로메가 오메가3 3종 택 1", "달콤한 프리미엄 수입과일 모음 (오톰크리스피 청포도,오렌지외)"]
        let prices : [Int] = [2900, 35900, 9900, 6990, 12900, 4900, 5900, 9490, 31900, 7900]
        let retailprices : [String] = ["5,900원", "79,800원", "18,000원", "12,000원", "40,000원", "12,900원", "22,000원", "11,500원", "75,000원", "17,900원"]
        let awards : [String] = ["", "토스프라임 2,513원 적립", "토스프라임 693원 적립", "토스프라임 488원 적립", "토스프라임 903원 적립", "토스프라임 343 적립", "토스프라임 413원 적립", "토스프라임 663원 적립", "토스프라임 2,233원 적립", "토스프라임 553원 적립"]
        let viewss : [String] = ["44.6만명이 구경함 • 무료배송","93.3만명이 구경함 • 무료배송", "54.9만명이 구경함 • 무료배송", "52.1만명이 구경함 • 무료배송", "64.2만명이 구경함 • 무료배송", "무료배송", "무료배송", "무료배송", "무료배송", "무료배송"]
        let categorys : [String] = ["특가", "식품", "식품", "식품", "뷰티", "의류", "뷰티", "뷰티", "식품", "식품"]
        
        var newShopList : [ShopModel] = []
        for i in 0...9 {
            let newShop = ShopModel(image: images[i], name: names[i], price: prices[i], retailprice: retailprices[i], award: awards[i], views: viewss[i], category: categorys[i])
            newShopList.append(newShop)
        }
        
        return newShopList
    }
    
    func filterSearchList(_ searchText: String){
        if searchText.isEmpty || searchText == "모두" {
            let sortedList = shopList.sorted { $0.price < $1.price }
            filteredShopList = sortedList
        } else {
            filteredShopList = shopList.filter{ $0.category.contains(searchText) }
        }
    }
      
}
