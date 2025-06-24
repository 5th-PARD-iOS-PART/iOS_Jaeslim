//
//  ContentView.swift
//  Add_seminar_LimJaeSeong
//
//  Created by 임재성 on 6/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ZStack{
                    HStack{
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 8){
                            Text("맛있으면 울어")
                                .font(.system(size: 25, weight: .bold))
                            
                            HStack{
                                Text("#맵찔이")
                                
                                Text("#향신료 NO")
                                
                                Text("#오이 NO")
                            }
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundColor(Color.orange)
                            .underline()
                            
                            Text("고유입맛 수정하기>")
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(Color.gray.opacity(0.6))
                                .underline()
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        ZStack{
                            Circle()
                                .fill(Color.orange.opacity(0.2))
                                .frame(width: 90, height: 90)
                                .overlay(
                                    Circle().stroke(Color.orange, lineWidth: 2)
                                )
                            
                            Image("dog")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                            
                            Button(action: {
                                print("더하기 버튼 눌림")
                            }) {
                                Image(systemName: "plus")
                                    .font(.system(size: 12, weight: .semibold))
                                    .foregroundColor(.orange)
                                    .frame(width: 20, height: 20)
                                    .background(Circle().fill(Color.white))
                                    .overlay(
                                        Circle().stroke(Color.orange, lineWidth: 2)
                                    )
                            }
                            .offset(x: 32, y: 32)
                        }
                        
                        Spacer()
                    }
                }
                
                HStack{
                    Spacer()
                    
                    Text("요즘 나의 상태는")
                        .font(.system(size: 18))
                    
                    Spacer()
                    Spacer()
                    Spacer()
                        
                    Text("다이어트")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)
                        .frame(width: 90, height: 32)
                        .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.orange, lineWidth: 1)
                            )
                    
                    Spacer()
                }
                .frame(width: 350, height: 90)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(color: .gray.opacity(0.3), radius: 5)
                .padding(.vertical, 20)
                
                VStack{
                    HStack{
                        Spacer()
                        
                        Text("어제 먹은 음식")
                            .font(.system(size: 18))
                        
                        Spacer()
                        Spacer()
                        Spacer()
                            
                        Text("오코노미야끼")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.orange)
                            .frame(width: 110, height: 32)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.orange, lineWidth: 1)
                                )
                        
                        Spacer()
                    }
                    .padding(.bottom, 25)
                    
                    Divider()
                        .foregroundColor(Color.black)
                        .frame(width: 300, height: 10)
                    
                    HStack{
                        Spacer()
                        
                        Text("오늘의 입맛 키워드")
                            .font(.system(size: 18))
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .padding(.top, 25)
                    .padding(.bottom, 25)
                    
                    HStack{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                            
                        Text("🥩육류")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.orange)
                            .frame(width: 70, height: 32)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.orange, lineWidth: 1)
                                )
                        
                        Text("🍞빵")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.orange)
                            .frame(width: 60, height: 32)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.orange, lineWidth: 1)
                                )
                        
                        Text("🇰🇷한식")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.orange)
                            .frame(width: 70, height: 32)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.orange, lineWidth: 1)
                                )
                        
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                            
                        Text("🍽️NO국물")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.orange)
                            .frame(width: 90, height: 32)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.orange, lineWidth: 1)
                                )
                        
                        Text("🥘헤비")
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .foregroundStyle(.orange)
                            .frame(width: 70, height: 32)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.orange, lineWidth: 1)
                                )
                        
                        Spacer()
                    }
                }
                .frame(width: 350, height: 300)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(color: .gray.opacity(0.3), radius: 5)
                
                
                VStack{
                    HStack{
                        Spacer()
                        
                        Text("도움말")
                            .font(.system(size: 18))
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .padding(.bottom, 20)
                    
                    HStack{
                        Spacer()
                        
                        Image("headphone")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.gray)
                        
                        Text("고객센터")
                            .font(.system(size: 15))
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .padding(.bottom, 15)
                    
                    HStack{
                        Spacer()
                        
                        Image("paper")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.gray)
                        
                        Text("서비스 이용 약관")
                            .font(.system(size: 15))
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .padding(.bottom, 15)
                    
                    HStack{
                        Spacer()
                        
                        Image("logout")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.gray)
                            
                        
                        Text("로그아웃")
                            .font(.system(size: 15))
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .padding(.bottom, 15)
                }
                .frame(width: 350, height: 200)
                .background(Color.white)
                .cornerRadius(25)
                .shadow(color: .gray.opacity(0.3), radius: 5)
                .padding(.vertical, 20)
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
