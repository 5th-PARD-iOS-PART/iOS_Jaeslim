//
//  TabView.swift
//  Add_seminar_LimJaeSeong
//
//  Created by 임재성 on 6/24/25.
//

import SwiftUI

struct Tab: View {
    @State private var selectedIndex = 2
    
    var body: some View {
        VStack(spacing: 0) {
            // 선택된 탭에 따른 화면 표시
            Group {
                switch selectedIndex {
                case 0:
                    Text("첫 번째 탭 화면") // 기존 ContentView
                case 1:
                    Text("두 번째 탭 화면")
                case 2:
                    ContentView()
                default:
                    ContentView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

            // 커스텀 탭바
            CustomRoundedTabBar(selectedIndex: $selectedIndex)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .ignoresSafeArea(.container, edges: .bottom)
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    Tab()
}
