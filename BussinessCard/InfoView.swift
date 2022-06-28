//
//  InfoView.swift
//  BussinessCard
//
//  Created by Kittisak Panluea on 28/6/2565 BE.
//

import SwiftUI


struct InfoView: View {
    var screenWidth = UIScreen.main.bounds.width
    
    let text : String
    let imageName : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
            .frame(width:screenWidth - 100,height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.1, green: 0.74, blue: 0.61))
                    Text(text)
                        .foregroundColor(Color("TextColor"))
                }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text:"Hello" , imageName:"phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
