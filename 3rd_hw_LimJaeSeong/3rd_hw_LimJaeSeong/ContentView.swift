//
//  ContentView.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 3/29/25.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    @State private var input: String = ""
    @StateObject var tdata = TData(name: "토스뱅크", account: "토스뱅크100090470710", money: 38841)
    @StateObject var hdata = HData(name: "WINGO통장", account: "하나은행15789165262107", money: 38841)
    
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
        NavigationStack(path: $path){
            tab(path: $path)
                .navigationDestination(for: String.self) { value in
                            switch value {
                            case "bank": bankView(path: $path)
                                    .environmentObject(tdata)
                                    .environmentObject(hdata)
                            case "first": bankView1(path: $path)
                                    .environmentObject(tdata)
                                    .environmentObject(hdata)
                            case "second": bankView2(path: $path, input: $input)
                                    .environmentObject(tdata)
                                    .environmentObject(hdata)
                            case "third": bankView3(path: $path, input: $input)
                                    .environmentObject(tdata)
                                    .environmentObject(hdata)
                            default: Text("Unknown Destination")
                            }
                        }
                .environmentObject(tdata)
                .environmentObject(hdata)
            
                .navigationTitle("")
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
                .toolbarBackground(Color.gray.opacity(0.01), for: .navigationBar)
        }
        .tint(.black)
    }
    
}

#Preview {
    ContentView()
        .environmentObject(Datas(name: "토스뱅크", account: "토스100", money: 38841))
        .environmentObject(Datas(name: "WINGO", account: "하나1578", money: 12345))
}
