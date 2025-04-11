//
//  bankView1.swift
//  4th_hw_LimJaeSeong
//
//  Created by 임재성 on 4/9/25.
//

import SwiftUI

struct bankView1: View {
    @Binding var path: NavigationPath
    @EnvironmentObject var tdata : TData
    @EnvironmentObject var hdata : HData
    
    var body: some View {
        VStack{
            HStack{
                Text("어디로 돈을 보낼까요?")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .padding(.horizontal, 25)
                
                Spacer()
            }
            .padding(.vertical,20)
            
            HStack{
                Text("계좌")
                    .padding()
                    .frame(width: 170, height: 40)
                    .foregroundColor(Color.black.opacity(0.7))
                    .background(Color.white)
                    
                Spacer()
                
                Text("연락처")
                    .padding()
                    .frame(width: 170, height: 40)
                    .foregroundColor(Color.black.opacity(0.7))
            }
            .padding()
            .frame(width: 370, height: 50)
            .background(Color.gray.opacity(0.1))
            
            List{
                HStack{
                    Text("계좌번호입력")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray.opacity(0.8))
                    
                    Spacer()
                    
                    Image("camera")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                }
                
                Section(
                    header: HStack{
                        Text("내 계좌")
                          
                        Spacer()
                        
                        Text("+18개")
                        
                        Image("arrow")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                    }
                ){
                    ForEach(accountData.sampleData[0]) { item in
                        Button {
                            path.append("second")
                        } label: {
                            accountRow(data: item)
                                .contentShape(Rectangle()) // 터치 영역 보장
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.white)
                    .listRowSeparator(.hidden)
                }
                
                Section(
                    header: HStack{
                        Text("최근 보낸 계좌")
                            .foregroundColor(Color.black)
                    }
                ){
                    ForEach(accountData.sampleData[1]) { item in
                        accountRow(data: item)
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.white)
                    .listRowSeparator(.hidden)
                }
            }//List
            .padding(.top, 20)
            .listStyle(.plain)
            .background(Color.white)
            .scrollContentBackground(.hidden)
        }
        .navigationTitle("")
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(.hidden, for: .navigationBar)
    }
}

#Preview {
    bankView1(path: .constant(NavigationPath()))
        .environmentObject(Datas())
}
