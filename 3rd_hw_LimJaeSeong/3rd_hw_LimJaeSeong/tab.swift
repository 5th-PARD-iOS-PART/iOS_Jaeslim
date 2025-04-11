//
//  tab.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 4/3/25.
//

import SwiftUI

struct tab: View {
    @Binding var path: NavigationPath
    @State private var selection = 0
    @EnvironmentObject var tdata : TData
    @EnvironmentObject var hdata : HData

    var body: some View {
        ZStack{
            
            TabView(selection: $selection) {
                HomeView(path: $path)
                .tabItem{
                    Image("home")
                    Text("홈")
                }
                .tag(0)
                
                ZStack{
                    Text("혜택")
                }
                .tabItem{
                    Image("diamond")
                    Text("혜택")
                }
                .tag(1)
                
                ZStack{
                    Text("토스쇼핑")
                }
                .tabItem{
                    Image("shop")
                    Text("토스쇼핑")
                }
                .tag(2)
                
                ZStack{
                    Text("증권")
                }
                .tabItem{
                    Image("stock")
                    Text("증권")
                }
                .tag(3)
                
                ZStack{
                    Text("전체")
                }
                .tabItem{
                    Image("group")
                    Text("전체")
                }
                .tag(3)
                
            }
        }
        .environmentObject(tdata)
        .environmentObject(hdata)
    }
}

//#Preview {
//    tab()
//}
