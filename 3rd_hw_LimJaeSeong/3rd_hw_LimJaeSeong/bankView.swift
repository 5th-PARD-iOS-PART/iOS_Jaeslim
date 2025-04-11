//
//  bankView.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 4/3/25.
//

import SwiftUI

struct bankView: View {
    @Binding var path: NavigationPath
    @EnvironmentObject var tdata : TData
    @EnvironmentObject var hdata : HData
    
    var body: some View {
            VStack{
                HStack{
                    Spacer()
                    
                    Text("통장")
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Spacer()
                    
                    Text("내 토스뱅크")
                        .foregroundColor(Color.gray.opacity(0.8))
                    
                    Spacer()
                    
                    Text("상품찾기")
                        .foregroundColor(Color.gray.opacity(0.8))
                    
                    Spacer()
                }
                .padding(.vertical,20)
                
                Divider()
            }
            
            List{
                Spacer()
                    .listRowSeparator(.hidden)
                
                Section(){
                    HStack{
                        Text("토스뱅크1000-9047-0710")
                            .font(.system(size: 15))
                            .foregroundColor(Color.gray.opacity(0.8))
                            .padding(.horizontal, 30)
                    }
                }
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.white)
                .listRowSeparator(.hidden)
                
                Section(){
                    HStack{
                        Text("38,841원")
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black.opacity(0.7))
                        
                        Spacer()
                        
                        HStack{
                            Image("bcard")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                            Text("카드")
                                .font(.system(size: 15))
                                .foregroundColor(Color.gray)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.15))
                        .cornerRadius(30)
                    }
                    .padding(.horizontal, 30)
                }
                .padding(.bottom, 20)
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
                
                Section(){
                    HStack{
                        Spacer()
                        
                        Text("채우기")
                            .font(.system(size: 18))
                            .padding(.vertical, 16)
                            .padding(.horizontal, 65)
                            .foregroundColor(Color.blue)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(15)
                        
                        Button("보내기"){
                            path.append("first")
                        }
                        .font(.system(size: 18))
                        .padding(.vertical, 16)
                        .padding(.horizontal, 65)
                        .foregroundColor(Color.white)
                        .background(Color.blue.opacity(0.9))
                        .cornerRadius(15)
                        
                        Spacer()
                    }
                }
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
                
                Section() {
                    HStack(spacing:0){
                        Image("이자")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(.vertical, 20)
                            .cornerRadius(10)
                        
                        VStack{
                            Text("어제까지 쌓인 이자")
                                .font(.system(size: 12))
                                .padding(.horizontal,20)
                                .padding(.vertical, 3)
                                .foregroundColor(Color.gray)
                                .cornerRadius(10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("114원 지금받기")
                                .font(.system(size: 18))
                                .foregroundColor(Color.black.opacity(0.5))
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
                    .padding(.horizontal, 30)
                    .background(Color.white)
                    .cornerRadius(30)
                }
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
                
                Rectangle()
                    .foregroundColor(Color.gray.opacity(0.15))
                    .frame(height: 20)
                    .listRowInsets(EdgeInsets())
                
                HStack{
                    Text("전체")
                        .font(.system(size: 18))
                        .foregroundColor(Color.black.opacity(0.5))
                    
                    Image("arrowb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                    
                    Spacer()
                    
                    Image("search")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                .padding(.horizontal, 15)
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
                
                ForEach(0..<bankData.sampleData.count, id: \.self) {sectionIndex in
                    Section(
                        header: {
                            if sectionIndex == 0 {
                                Text("3월 22일")
                            } else {
                                Text("3월 21일")
                            }
                        }()
                            .padding(.horizontal,20)
                    ) {
                        ForEach(bankData.sampleData[sectionIndex]) { item in
                            bankRow(data: item)
                        }
                        
                    }
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.white)
                    .listRowSeparator(.hidden)
                }
            }//List
            .listStyle(.plain)
            .background(Color.white)
            .scrollContentBackground(.hidden)
            
            .navigationTitle("")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("통장관리")
                        .font(.system(size: 18))
                        .foregroundColor(.black.opacity(0.5))
                    
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(.hidden, for: .navigationBar)

        .environmentObject(tdata)
        .environmentObject(hdata)
    }

}

#Preview {
    bankView(path: .constant(NavigationPath()))
        .environmentObject(Datas())
}
