//
//  SmallVerticalButton.swift
//  buildnetflix
//
//  Created by Linh Dang on 1/23/24.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    var isOnImage: String
    var isOffImage: String
    
    var isOn: Bool
    var action: () -> Void // closure that returns nothing
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Image(systemName: isOn ? isOnImage : isOffImage)
                    .padding(.bottom, 1)
                
                Text(text)
                    .font(.system(size: 14))
                    .bold()
            }
            .foregroundColor(.white)
        }
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false){
                
                print("Tapped")
            }
        }
    }
}
