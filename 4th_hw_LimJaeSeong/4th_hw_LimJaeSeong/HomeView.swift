//
//  HomeView.swift
//  4th_hw_LimJaeSeong
//
//  Created by 임재성 on 3/31/25.
//

import SwiftUI

struct HomeView: View {
    @Binding var path: NavigationPath
    @EnvironmentObject var tdata : TData
    @EnvironmentObject var hdata : HData
    
    var body: some View {
        List{
            Section() {
                HStack(spacing:0){
                    Image("tooth")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 35)
                        .padding(.vertical, 20)
                        .cornerRadius(10)
                    
                    VStack{
                        Text("치아는 뼈일까?")
                            .font(.system(size: 15))
                            .padding(.horizontal,20)
                            .padding(.vertical, 5)
                            .foregroundColor(Color.gray)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("정답보기")
                            .font(.system(size: 18))
                            .foregroundColor(Color.blue.opacity(0.8))
                            .padding(.horizontal,20)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                    
                    Image("arrow")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 20)
                .background(Color.white)
                .cornerRadius(30)
                .listRowInsets(EdgeInsets())
            }//section 1
            .listSectionSpacing(10)
            
            Section(){
                HStack{
                    Text("토스뱅크")
                        .font(.system(size: 20))
                        .foregroundColor(Color.black.opacity(0.6))
                        .cornerRadius(10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    Text("내 소비복권긁기")
                        .font(.system(size: 14))
                        .foregroundColor(Color.blue.opacity(0.7))
                        .padding(.horizontal,8)
                        .cornerRadius(10)
                    
                    Image("arrow")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                }
                .padding(.vertical, 8)
            }//section 2
            .listSectionSpacing(10)
            
            ForEach(0..<tossData.sampleData.count, id: \.self) { sectionIndex in
                let sectionData = tossData.sampleData[sectionIndex]
                let footerView = AnyView(
                    HStack {
                        Spacer()
                        Text("대출0").padding().foregroundColor(.gray)
                        Spacer()
                        Divider()
                        Spacer()
                        Text("증권7").padding().foregroundColor(.gray)
                        Spacer()
                        Divider().frame(width: 10)
                        Spacer()
                        Text("저축3").padding().foregroundColor(.gray)
                        Spacer()
                        Divider()
                        Spacer()
                        Text("전체26").padding().foregroundColor(.gray)
                        Spacer()
                    }
                    .cornerRadius(20)
                    .background(Color.gray.opacity(0.05))
                )
                
                Section(footer: footerView) {
                    ForEach(sectionData) { item in
                        Button {
                            path.append("bank")
                        } label: {
                            tossRow(data: item)
                                .contentShape(Rectangle()) // 터치 영역 보장
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .listRowInsets(EdgeInsets())
            }
    
            Section() {
                HStack(spacing:0){
                    Image("W")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(10)
                    
                    VStack{
                        Text("823,643원")
                            .font(.system(size: 15))
                            .padding(.horizontal,10)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("3월에 쓴돈")
                            .font(.system(size: 12))
                            .foregroundColor(Color.gray)
                            .padding(.horizontal,10)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                    
                    Text("내역")
                        .font(.system(size: 15))
                        .padding(.vertical, 10)
                        .padding(.horizontal, 15)
                        .foregroundColor(Color.gray)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }
                .padding(.vertical, 15)
                .padding(.horizontal, 20)
                .background(Color.white)
                .cornerRadius(30)
            }//section 4
            .listRowInsets(EdgeInsets())
            .listSectionSpacing(10)
            
            Section(footer: HStack {
                Spacer()
                
                Text("계좌개설")
                    .padding()
                    .foregroundColor(.gray)
                
                Spacer()
                
                Divider()
                
                Spacer()
                
                Text("카드발급")
                    .padding()
                    .foregroundColor(.gray)
                
                Spacer()
                
                Divider()
                
                Spacer()
                
                Text("대출받기")
                    .padding()
                    .foregroundColor(.gray)
                
                Spacer()
            }
                .cornerRadius(20)
                .background(Color.gray.opacity(0.02))){
                HStack{
                    Image("score")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .cornerRadius(10)
                    
                    Text("내 신용점수")
                        .font(.system(size: 15))
                        .foregroundColor(Color.black.opacity(0.6))
                        .cornerRadius(10)

                    Spacer()
                    
                    Text("확인하기")
                        .font(.system(size: 15))
                        .padding(.vertical, 10)
                        .padding(.horizontal, 15)
                        .foregroundColor(Color.gray)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
            }//section 5
            .listRowInsets(EdgeInsets())
            .listSectionSpacing(10)
            
            Section() {
                HStack(spacing:0){
                    Image("letter")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .cornerRadius(10)
                    
                    VStack{
                        Text("[7만원]이 지급되었습니다")
                            .font(.system(size: 16))
                            .padding(.horizontal,15)
                            .padding(.vertical, 2)
                            .foregroundColor(Color.black.opacity(0.7))
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("빗썸신규회원100%지급")
                            .font(.system(size: 13))
                            .foregroundColor(Color.gray)
                            .padding(.horizontal,15)
                            .padding(.vertical, 2)
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                }
                .padding(.vertical, 15)
                .padding(.horizontal, 20)
                .background(Color.white)
                .cornerRadius(30)
            }//section 6
            .listRowInsets(EdgeInsets())
            .listSectionSpacing(10)
            
            Section(header: Text("유재혁님을 위해 준비했어요").font(.headline)){
                HStack{
                    Section() {
                        HStack(){
                            VStack{
                                Text("혜택받는")
                                    .font(.system(size: 17))
                                    .padding(.vertical, 3)
                                    .foregroundColor(Color.black.opacity(0.6))
                                    .cornerRadius(10)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("체크카드")
                                    .font(.system(size: 16))
                                    .foregroundColor(Color.black.opacity(0.6))
                                    .cornerRadius(10)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Spacer()
                            
                            Image("card1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                        }
                        .padding(.vertical, 5)
                        .background(Color.white)
                    }
                    
                    Section() {
                        HStack(spacing:0){
                            VStack{
                                Text("내 카드보다")
                                    .font(.system(size: 17))
                                    .padding(.vertical, 3)
                                    .foregroundColor(Color.black.opacity(0.6))
                                    .cornerRadius(10)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("혜택받기")
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.black.opacity(0.6))
                                    .cornerRadius(10)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Spacer()
                            
                            Image("card2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                        }
                        .padding(.vertical, 5)
                        .background(Color.white)
                    }
                }
            }//section 7
            .listSectionSpacing(10)
            
            Section(footer: HStack{
                Spacer()
                
                Text("내 자산 숨기기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.black.opacity(0.4))
                
                Spacer()
                Spacer()
                
                Text("금액 가리기")
                    .font(.system(size: 15))
                    .foregroundColor(Color.black.opacity(0.4))
                
                Spacer()
            }
                .padding(.vertical, 40)
                .listRowInsets(EdgeInsets())
                .background(Color.gray.opacity(0.02))){
                VStack(spacing: 0){
                    Section(){
                        HStack{
                            Image("receipt")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            
                            Text("내현금영수증")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black.opacity(0.5))
                                .padding(.horizontal,8)
                                .cornerRadius(10)
                            
                            Spacer()
                            
                            Image("arrow")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                        }
                        .padding(.vertical, 8)
                    }
                    
                    Section(){
                        HStack{
                            Image("card")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            
                            Text("토스신용카드")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black.opacity(0.5))
                                .padding(.horizontal,8)
                                .cornerRadius(10)
                            
                            Spacer()
                            
                            Image("arrow")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                        }
                        .padding(.vertical, 8)
                    }
                    
                    Section(){
                        HStack{
                            Image("cal")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            
                            Text("더 낸 연말정산 돌려받기")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black.opacity(0.5))
                                .padding(.horizontal,8)
                                .cornerRadius(10)
                            
                            Spacer()
                            
                            Image("arrow")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                        }
                        .padding(.vertical, 8)
                    }
                }
            }//section 8
            
        } // List
        .environmentObject(tdata)
        .environmentObject(hdata)
    }
}

#Preview {
    HomeView(path: .constant(NavigationPath()))
        .environmentObject(Datas())
}
