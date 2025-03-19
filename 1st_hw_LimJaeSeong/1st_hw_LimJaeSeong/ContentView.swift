//
//  ContentView.swift
//  1st_hw_LimJaeSeong
//
//  Created by 임재성 on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var shouldShowAlert: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea() //배경 초록색
            
            VStack {
                Image("pard")
                    .resizable()
                    .frame(width: 400, height: 100)
                    .padding()
                    .background(.black)
                
                Spacer()//빈 공간 조정
                
                Image("IMG_2583")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .scaledToFill()
                    .clipShape(Rectangle())
                    .border(.blue, width: 5) //경계선 추가
                    .cornerRadius(10) //둥근 모서리 적용
                
                Spacer()//빈 공간 조정
                
                Text("임재성")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.black)
                    .shadow(color: .gray, radius: 3) //그림자 생성
                
                Divider() //구분선
                    .frame(height: 2)
                    .background(Color.gray)
                
                Text("iOS | 21학번 | 24살")
                    .font(.headline)
                    .padding()
                
                Button("자세히 보기") { //버튼 생성
                    print("버튼 클릭됨")
                    shouldShowAlert = true
                }
                .font(.system(size: 25))
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.black)
                .background(Color.yellow)
                .cornerRadius(20)
                .alert("ISTJ | 전산심화 | 경남 거제", isPresented: $shouldShowAlert) {
                    Button("닫기", role: .cancel){}
                } message: {
                    Text("더 자세한건 다음 기회에~")
                }
                
                Spacer()//빈 공간 조정
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
