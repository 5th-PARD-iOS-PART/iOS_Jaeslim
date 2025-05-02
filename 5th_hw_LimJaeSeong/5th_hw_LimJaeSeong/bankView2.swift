//
//  bankView2.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 4/9/25.
//

import SwiftUI

struct bankView2: View {
    @Binding var path: NavigationPath
    @Binding var input: String
    @EnvironmentObject var tdata : TData
    @EnvironmentObject var hdata : HData
    
    var body: some View {
        VStack(){
            HStack{
                Text("내 \(tdata.name)")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                Text("에서")
                    .font(.system(size: 25))
                
                Spacer()
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            
            HStack{
                Text("잔액")
                    .foregroundColor(Color.gray)
                
                Text("\(tdata.money)원")
                    .foregroundColor(Color.black.opacity(0.8))
                
                Spacer()
            }
            .padding(.bottom, 20)
            .padding(.horizontal, 20)
            
            HStack{
                Text("내 \(hdata.name)")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                Text("으로")
                    .font(.system(size: 25))
                
                Spacer()
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            
            HStack{
                Text("\(hdata.account)")
                    .foregroundColor(Color.gray)
                
                Spacer()
            }
            .padding(.bottom, 20)
            .padding(.horizontal, 20)
            
            ZStack() {
                Text(input.isEmpty ? "얼마나 옮길까요?" : "\(input)원")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.4))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            HStack{
                if let intinput = Int(input), intinput > tdata.money {
                    Text("잔액이 \(tdata.money)원이에요.")
                        .foregroundColor(Color.red)
                }else {
                    Text("잔액\(tdata.money)원입력")
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.gray.opacity(0.15))
                        .cornerRadius(10)
                        .foregroundColor(Color.black.opacity(0.7))
                }
                
                Spacer()
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            
            Spacer()
            
            if !input.isEmpty {
                Button("다음"){
                    path.append("third")
                }
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.vertical, 18)
                    .background(Color.blue)
            }
            
            Grid(alignment: .center, horizontalSpacing: 100, verticalSpacing: 30){
                GridRow{
                    Button("1") {
                        input.append("1")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                    Button("2") {
                        input.append("2")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                    Button("3") {
                        input.append("3")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                }
                
                GridRow{
                    Button("4") {
                        input.append("4")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                    Button("5") {
                        input.append("5")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                    Button("6") {
                        input.append("6")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                }
                
                GridRow{
                    Button("7") {
                        input.append("7")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                    Button("8") {
                        input.append("8")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                    Button("9") {
                        input.append("9")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                }
                
                GridRow{
                    Button("00") {
                        input.append("00")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                    Button("0") {
                        input.append("0")
                    }
                    .font(.system(size: 30))
                    .foregroundColor(Color.black)
                    
                    Button(action: {
                        input.removeLast()
                    }) {
                        Image("left")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.red)
                    }
                }
            }
        }
        
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("토스뱅크송금")
                    .font(.system(size: 18))
                    .foregroundColor(.black.opacity(0.5))
                
            }
        }
        .navigationTitle("")
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(.hidden, for: .navigationBar)

    }
}

#Preview {
    bankView2(path: .constant(NavigationPath()), input: .constant("1000"))
        .environmentObject(TData(name: "토스뱅크", account: "토스100", money: 38841))
        .environmentObject(HData(name: "WINGO", account: "하나1578", money: 12345))
}
