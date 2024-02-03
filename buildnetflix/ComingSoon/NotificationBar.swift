//
//  NotificationBar.swift
//  buildnetflix
//
//  Created by Linh Dang on 2/3/24.
//

import SwiftUI

struct NotificationBar: View {
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Button {
            showNotificationList = true
        } label: {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                    .bold()
                
                Spacer()
                Image(systemName: "chevron.right")
            }
            .font(.system(size: 18))
            .bold()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct NotificationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            NotificationBar(showNotificationList: .constant(false))
        }
    }
}
