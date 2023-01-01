//
//  CookingWayView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/2.
//

import SwiftUI

struct CookingWayView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading,spacing: 4, content: {
                HStack(){
                    Image("蒸-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("蒸")
                }
                Divider()
                HStack(){
                    Image("煎-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("煎")
                }
                Divider()
                HStack(){
                    Image("烙-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("烙")
                }
                Divider()
                HStack(){
                    Image("爆-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("爆")
                }
            
                
                
            })
            Image(systemName: "heart.circle")
                .font(Font.title.weight(.ultraLight))
                .imageScale(.large)
            VStack(alignment: .leading,spacing: 4, content: {
                HStack(){
                    Image("烤-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("烤")
                }
                Divider()
                HStack(){
                    Image("涮-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("涮")
                }
                Divider()
                HStack(){
                    Image("冲-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("冲")
                }
                Divider()
                HStack(){
                    Image("煨-Icon")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("煨")
                }
                Divider()
            })
        }
        .font(.callout)
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct CookingWayView_Previews: PreviewProvider {
    static var previews: some View {
        CookingWayView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}

struct IconModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 42,height: 42,alignment: .center)
    }
}
