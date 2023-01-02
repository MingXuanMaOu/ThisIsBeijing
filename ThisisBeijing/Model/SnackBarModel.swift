//
//  SnackBarModel.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/2.
//

import SwiftUI

struct SnackBar: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var hot: Int
    var introduction: [String]
    var method: [String]
}
