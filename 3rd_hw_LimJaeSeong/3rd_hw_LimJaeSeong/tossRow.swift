//
//  tossRow.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 3/31/25.
//

import SwiftUI

struct tossRow: View {
    var data: tossData
    
    var body: some View {
            HStack(spacing:0){
                Image(data.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                
                VStack{
                    Text(data.money)
                        .font(.system(size: 15))
                        .padding(.horizontal,10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text(data.name)
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                        .padding(.horizontal,10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                
                Spacer()
                
                Text(data.button)
                    .font(.system(size: 15))
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
                    .foregroundColor(Color.gray)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background(Color.white)
            .cornerRadius(30)
        }
       
}

#Preview {
    tossRow(data: tossData(image: "W", money: "339,690원", name: "WINGO통장", button: "송금"))
}
