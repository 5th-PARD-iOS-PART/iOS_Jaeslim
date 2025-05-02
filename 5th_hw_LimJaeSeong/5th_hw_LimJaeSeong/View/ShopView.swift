//
//  ShopView.swift
//  5th_hw_LimJaeSeong
//
//  Created by 임재성 on 5/1/25.
//

import SwiftUI

struct ShopView: View {
    @StateObject private var shopViewModel = ShopViewModel()
    
    @State private var image: String = ""
    @State private var name: String = ""
    @State private var price: String = ""
    @State private var retailprice: String = ""
    @State private var award: String = ""
    @State private var views: String = ""
    
    @State private var selectedTab = 0
    let tabTitles = ["모두", "특가", "식품", "의류", "전자제품", "뷰티"]
    
    var body: some View {
        NavigationStack{
            HStack {
                ForEach(tabTitles.indices, id: \.self) { index in
                    Button(action: {
                        selectedTab = index
                        shopViewModel.filterSearchList(tabTitles[index])
                    }) {
                        VStack {
                            Text(tabTitles[index])
                                .font(.system(size: 15, weight: .bold))
                                .foregroundColor(selectedTab == index ? .black : .gray)
                                       
                            // 아래 선 표시
                            Rectangle()
                                .fill(selectedTab == index ? Color.black : Color.clear)
                                .frame(height: 2)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding(.top)
            .background(Color.white)
            .padding(.horizontal)
            
            List{
                if selectedTab == 0 {
                    Image("event")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 360, height: 150)
                    
                    HStack{
                        Spacer()
                        
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 60, height: 1)
                        
                        Text("50초 • 스크롤 해야 시간이 줄어요")
                            .font(.system(size: 14))
                            .bold()
                            .foregroundColor(Color.black.opacity(0.5))
                        
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 60, height: 1)
                        
                        Spacer()
                    }
                    .listRowSeparator(.hidden)
                }
                
                Section(header:
                            Group{
                    if selectedTab == 0 {
                        HStack{
                            Text("오늘의 상품")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(Color.black)
                            
                            Spacer()
                            
                            Text("전체보기")
                                .font(.system(size: 14))
                                .foregroundColor(Color.black.opacity(0.5))
                            
                            Image("arrow")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 8, height: 14)
                        }
                    } else {
                        Text("\(tabTitles[selectedTab])")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(Color.black)
                    }
                }
                ){
                    ForEach(shopViewModel.filteredShopList){ shop in
                        VStack(alignment: .leading , spacing: 0){
                            Image(shop.image)
                                .resizable()
                                .scaledToFit()
                            
                            Text(shop.name)
                                .font(.system(size: 14))
                                .padding(.top, 10)
                            
                            HStack{
                                Text("\(shop.price)원")
                                    .font(.title2)
                                    .bold()
                                
                                Text(shop.retailprice)
                                    .foregroundColor(.gray)
                                    .bold()
                                    .strikethrough()
                                
                                if shop.award != ""{
                                    HStack{
                                        Image("tossprime")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 10, height: 10)
                                        
                                        Text(shop.award)
                                            .font(.system(size: 12))
                                            .bold()
                                            .foregroundColor(.blue)
                                    }
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 10)
                                    .background(Color.blue.opacity(0.15))
                                    .cornerRadius(15)
                                }
                            }
                            .padding(.vertical, 5)
                            
                            Text(shop.views)
                                .font(.system(size: 10))
                                .foregroundColor(Color.black.opacity(0.7))
                        } // : VStack
                    } // : loop
                    .listRowSeparator(.hidden)
                }
            } // :List
            .listStyle(.plain)
            .background(.white)
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                        Text("토스쇼핑")
                            .font(.system(size: 25))
                            .bold()
                            
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack{
                        Image("search")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            
                        Image("person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.horizontal, 10)
                        
                        Image("cart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                }
            }
            .toolbarBackground(Color.white, for: .navigationBar)
            
        } // : NavigationStack
        .onAppear{
            shopViewModel.shopList = shopViewModel.getShopMockData()
            shopViewModel.filteredShopList = shopViewModel.shopList
        }
            
    }
}

#Preview {
    ShopView()
}
