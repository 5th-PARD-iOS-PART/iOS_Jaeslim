//
//  accountRow.swift
//  4th_hw_LimJaeSeong
//
//  Created by 임재성 on 4/9/25.
//

import SwiftUI

struct accountRow: View {
    var data: accountData
    
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
                    .fontWeight(.bold)
                    .padding(.horizontal,10)
                    .cornerRadius(10)
                    .foregroundColor(Color.black.opacity(0.6))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(data.account)
                    .font(.system(size: 15))
                    .foregroundColor(Color.gray)
                    .padding(.horizontal,12)
                    .cornerRadius(10)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            
            Spacer()
            
            Image(data.star)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 20)
    }
}

#Preview {
    accountRow(data: accountData(image: "hana2", name: "WINGO통장", account: "하나은행157-891652-62107", star: "star"))
}
