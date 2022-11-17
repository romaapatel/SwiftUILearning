//
//  DetailsView.swift
//  SwiftUILearning
//
//  Created by Roma Patel on 17/11/22.
//

import SwiftUI

struct DetailsView: View {
   let emojiItem : EmojiItem
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                EmojiCircleView(emojiItem: emojiItem)
                    .padding(.trailing, 5)

                Text(emojiItem.name)
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            Text(emojiItem.description)
                .padding(.top)

            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(emojiItem.name), displayMode: .inline)
    }
}


