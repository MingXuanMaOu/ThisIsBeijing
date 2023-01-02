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
    let snackBars: [SnackBar] = snackBarsData
    
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
                    .modifier(TitleModifier())
                CookingWayView()
                    .frame(maxWidth: 640)
                VStack(alignment: .center,spacing: 0, content: {
                    Text("特色北京小吃")
                        .modifier(TitleModifier())
                    
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
                
                Text("特色小吃店")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center,spacing: 20, content: {
                    ForEach(snackBars) { snackBar in
                        SnackBarCardView(snackBar: snackBar)
                    }
                })
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
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

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design: .serif))
            .foregroundColor(Color("ColorBrownAdaptive"))
            .padding(8)
    }
}
