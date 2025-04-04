//
//  ContentView.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 3/29/25.
//

import SwiftUI

struct ContentView: View {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font: UIFont.boldSystemFont(ofSize: 20) // 글자 크기 변경
        ]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationView {
            tab()
            
            .navigationTitle("")
            .tint(.black)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack{
                        Image("task")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.horizontal, 5)
                        
                        Text("할 일")
                            .font(.system(size: 20))
                            .foregroundColor(.black.opacity(0.6))
                        
                        Image("arrow")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 12)
                        
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack{
                        Image("결제")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                        
                        Image("알림")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .padding(.horizontal, 15)

                    }
                }
            }
            .toolbarBackground(.hidden, for: .navigationBar)
        }
    }
    
}

#Preview {
    ContentView()
}
