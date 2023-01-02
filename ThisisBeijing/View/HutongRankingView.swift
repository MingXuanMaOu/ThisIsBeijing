//
//  HutongRankingView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/2.
//

import SwiftUI

struct HutongRankingView: View {
    
    let hutong: Hutong
    @State private var slideInAnimation: Bool = false
    
    var body: some View {
        VStack{
            Image(hutong.image)
                .resizable()
                .frame(width: 100,height: 100,alignment: .center)
                .clipShape(Circle())
                .background(Circle()
                    .fill(Color("ColorBrownLight"))
                    .frame(width: 110,height: 110,alignment: .center))
                .background(Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width: 120,height: 120,alignment: .center))
                .zIndex(1)
                .animation(Animation.easeInOut(duration: 1))
                .offset(y: slideInAnimation ? 55: -55)
            
            VStack(alignment: .center,spacing: 10, content: {
                VStack(alignment: .center,spacing: 0, content: {
                    Text(hutong.ranking)
                        .font(.system(.largeTitle,design: .serif))
                        .fontWeight(.bold)
                    Text("Ranking")
                        .font(.system(.body,design: .serif))
                        .fontWeight(.heavy)
                    Text(hutong.title)
                        .font(.system(.title,design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorBrownMedium"))
                        .padding(.vertical,12)
                        .padding(.horizontal,0)
                        .frame(width: 220)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white,Color("ColorBrownLight")]), startPoint: .top, endPoint: .bottom)))
                    Spacer()
                    Text(hutong.description)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .lineLimit(nil)
                    Spacer()
                    
                    Text(hutong.times)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .lineLimit(nil)
                    Spacer()
                    
                    Text(hutong.times)
                        .foregroundColor(.white)
                        .font(.system(.callout,design: .serif))
                        .fontWeight(.bold)
                        .shadow(radius: 3)
                        .padding(.vertical)
                        .frame(width: 185)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorBrownMedium"),Color("ColorBrownDark")]), startPoint: .top, endPoint: .bottom)))
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 6,x: 0,y: 6)
                    
                    Text(hutong.feature)
                        .font(.footnote)
                        .foregroundColor(Color("ColorBrownLight"))
                        .fontWeight(.bold)
                        .lineLimit(3)
                        .frame(width: 160)
        
                })
                .foregroundColor(Color("ColorBrownMedium"))
                .padding(.top,65)
                .frame(width: 180)
            })
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260,height: 485,alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBrownLight"),Color("ColorBrownMedium")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .onAppear(){
            slideInAnimation.toggle()
        }
    }

}

struct HutongRankingView_Previews: PreviewProvider {
    static var previews: some View {
        HutongRankingView(hutong: HutongsData[1])
    }
}
