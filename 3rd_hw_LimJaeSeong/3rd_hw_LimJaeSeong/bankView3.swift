//
//  bankView3.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 4/9/25.
//

import SwiftUI

struct bankView3: View {
    @Binding var path: NavigationPath
    @Binding var input: String
    @EnvironmentObject var tdata : TData
    @EnvironmentObject var hdata : HData
    
    var body: some View {
        VStack{
            Spacer()
            
            HStack{
                Text("내 \(hdata.name)")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.blue)
                
                Text("으로")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
            }
            
            Text("\(input)원을")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .padding(.vertical, 1)
            
            Text("옮길까요?")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            
            Spacer()
            Spacer()
            
            HStack{
                Text("받는 분에게 표시")
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("유재혁")
                    .foregroundColor(Color.gray)
                
                Image("arrow")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 15)
            }
            .padding(.horizontal, 20)
            
            HStack{
                Text("출금 계좌")
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("내 토스뱅크 통장")
                    .foregroundColor(Color.gray)
                
                Image("arrow")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 15)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 15)
            
            HStack{
                Text("입급 계좌")
                    .foregroundColor(Color.gray)
                
                Spacer()
                
                Text("\(tdata.account)")
                    .foregroundColor(Color.gray)
                
                Image("arrow")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 15)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 30)
            
            Button("옮기기"){
                path.removeLast(path.count)
            }
            .font(.system(size: 20))
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding(.vertical, 20)
            .padding(.horizontal, 150)
            .background(Color.blue.opacity(0.9))
            .cornerRadius(20)
            
            Text("평생 수수료 무료")
                .padding()
                .foregroundColor(Color.gray)
        }
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("토스뱅크송금")
                    .font(.system(size: 18))
                    .foregroundColor(.black.opacity(0.5))
                
            }
        }
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(.hidden, for: .navigationBar)
    }
}

#Preview {
    bankView3(path: .constant(NavigationPath()), input: .constant("1000"))
        .environmentObject(TData(name: "토스뱅크", account: "토스100", money: 38841))
        .environmentObject(HData(name: "WINGO", account: "하나1578", money: 12345))
}
