//
//  CardView.swift
//  SwiftUITest
//
//  Created by Kirti Verma on 8/1/20.
//  Copyright © 2020 Kirti Verma. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .background(Color.white.opacity(0.5))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: Binding.constant("apple"))
    }
}
