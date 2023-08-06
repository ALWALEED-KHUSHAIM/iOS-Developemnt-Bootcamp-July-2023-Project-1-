//
//  File.swift
//  RemaindarApp
//
//  Created by الوليد خشيم on 16/01/1445 AH.
//

import Foundation
import SwiftUI

struct card: View {
    var numCard: Int
    var imgIconsCard: String
    var nameCard: String
    var body: some View {
        VStack {
            
            HStack{
                Image(systemName: "\( imgIconsCard)").padding(.leading)
                Spacer()
                Text("\(numCard)").padding().font(.system(size: 25)).foregroundColor(Color.white).bold()
            }
            HStack {
                Text("\( nameCard) ").padding(.bottom).padding(.leading)
                Spacer()
            }
        }.frame(width: 160,height: 85).background(Color.gray.opacity(0.4)).cornerRadius(12)
        .padding()
    }
}
