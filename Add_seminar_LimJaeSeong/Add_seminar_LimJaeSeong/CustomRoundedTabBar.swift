//
//  CustomRoundedTabBar.swift
//  Add_seminar_LimJaeSeong
//
//  Created by 임재성 on 6/24/25.
//

import SwiftUI

struct CustomRoundedTabBar: View {
    @Binding var selectedIndex: Int

    var body: some View {
        ZStack {
            // 둥근 배경 탭바
            HStack {
                TabBarItem(imageName: "friend_gray", title: "친구 찾기", isSelected: selectedIndex == 0) {
                    selectedIndex = 0
                }
                Spacer()

                // 빈 공간: 중앙 탭은 ZStack에 별도로 표시
                Spacer()

                TabBarItem(imageName: "my_gray", title: "MY", isSelected: selectedIndex == 2) {
                    selectedIndex = 2
                }
            }
            .padding(.horizontal, 50)
            .padding(.vertical, 12)
            .background(
                Color.white
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .shadow(color: Color.black.opacity(0.15), radius: 2, y: -2)
            )
            //.frame(height: 70)
            .padding(.top)

            // 가운데 탭 버튼: 두 번째 탭
            Button(action: {
                selectedIndex = 1
            }) {
                VStack(spacing: 4) {
                    ZStack{
                        Circle()
                            .frame(width: 75, height: 75)
                            .foregroundColor(Color.white)
                            .shadow(color: Color.black.opacity(0.15), radius: 8, y: -2)
                        
                        Image("mumuk")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .background(Color.orange)
                            .clipShape(Circle())
                    }

                    Text("메뉴 추천")
                        .font(.system(size: 13))
                        .foregroundColor(selectedIndex == 1 ? .orange : .gray)
                }
            }
            .offset(y: -30)
        }
    }
}


struct TabBarItem: View {
    let imageName: String
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(isSelected ? .orange : .gray)
                
                Text(title)
                    .font(.system(size: 13))
                    .foregroundColor(isSelected ? .orange : .gray)
            }
        }
    }
}

