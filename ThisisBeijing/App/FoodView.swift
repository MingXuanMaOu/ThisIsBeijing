//
//  FoodView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/1.
//

import SwiftUI

struct FoodView: View {
    
    let headers: [Header] = headersData
    let foods: [Food] = foodsData
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack{
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment: .top,spacing: 0, content: {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        }
                    })
                }
                Text("小吃的烹饪方式")
                    .fontWeight(.bold)
                    .modifier(TitlModifier())
                CookingWayView()
                    .frame(maxWidth: 640)
                VStack(alignment: .center,spacing: 0, content: {
                    Text("特色北京小吃")
                        .modifier(TitlModifier())
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(alignment: .top,spacing: 60, content: {
                            ForEach(foods) { food in
                                FoodCardView(food: food)
                            }
                        })
                        .padding(.vertical)
                        .padding(.leading,60)
                        .padding(.trailing,20)
                    }
                })
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
            }
            
        }
        .edgesIgnoringSafeArea(.all)
    }
        
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView()
    }
}

struct TitlModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design: .serif))
            .foregroundColor(Color("ColorBrownAdaptive"))
            .padding(8)
    }
}
