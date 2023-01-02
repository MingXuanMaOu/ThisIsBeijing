//
//  HutongView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/1.
//

import SwiftUI

struct HutongView: View {
    
    let hutong: [Hutong] = HutongsData
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            VStack{
                Spacer()
                HStack(alignment: .center,spacing: 25, content: {
                    ForEach(hutong) { hutong in
                        HutongRankingView(hutong: hutong)
                    }
                })
                .padding(.vertical)
                .padding(.horizontal,25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HutongView_Previews: PreviewProvider {
    static var previews: some View {
        HutongView()
    }
}
