//
//  bankRow.swift
//  3rd_hw_LimJaeSeong
//
//  Created by 임재성 on 4/3/25.
//

import SwiftUI

struct bankRow: View {
    var data: bankData
    
    var body: some View {
        HStack(spacing:0){
            Image(data.image)
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .cornerRadius(10)
            
            VStack{
                Text(data.name)
                    .font(.system(size: 18))
                    .padding(.horizontal,10)
                    .cornerRadius(10)
                    .foregroundColor(Color.black.opacity(0.6))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(data.time)
                    .font(.system(size: 15))
                    .foregroundColor(Color.gray)
                    .padding(.horizontal,12)
                    .cornerRadius(10)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            
            Spacer()
            
            VStack{
                Text(data.money)
                    .font(.system(size: 18))
                    .padding(.horizontal, 15)
                    .foregroundColor(Color.black.opacity(0.6))
                    .cornerRadius(10)
                
                Text(data.sum)
                    .font(.system(size: 10))
                    .foregroundColor(Color.gray)
                    .cornerRadius(10)
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 20)
    }
       
}

#Preview {
    bankRow(data: bankData(image: "kakaoT", name: "카카오 택시_0", time: "11:13", money: "-6,200원", sum: "38,841원"))
}
