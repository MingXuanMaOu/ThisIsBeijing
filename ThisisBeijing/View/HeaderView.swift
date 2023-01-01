//
//  HeaderView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/1.
//

import SwiftUI

struct HeaderView: View {
    
    @State private var showHeadline: Bool = false
    var header: Header
    
    var slideInAnimation: Animation{
        Animation.spring(response: 1.5,dampingFraction: 0.5,blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack{
            Image(header.image)
                .resizable()
                .scaledToFill()
            HStack(alignment: .top,spacing: 0, content: {
                Rectangle()
                    .fill(Color("ColorBrownMedium"))
                    .opacity(0.8)
                    .frame(width: 4)
                VStack(alignment: .leading,spacing: 6, content: {
                    Text(header.headline)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                })
                .padding(.vertical,0)
                .padding(.horizontal,20)
                .frame(width: 281,height: 105)
                .background(Color("ColorBlackTransparentLight"))
            })
            .frame(width: 285,height: 105,alignment: .center)
            .offset(x:-66,y:showHeadline ? 80: 190)
            .animation(slideInAnimation)
            .onAppear(perform: {
                showHeadline = true
            })
            .onDisappear(perform: {
                showHeadline = false
            })
        }
        .frame(width: 480,height: 320,alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[1])
    }
}
