//
//  ListExample.swift
//  SwiftUILearning
//
//  Created by Roma Patel on 17/11/22.
//

import SwiftUI

struct ListExample: View {

    var body: some View {
        NavigationView {
            List(emojiList) { emojiItem in
                NavigationLink(destination: DetailsView(emojiItem: emojiItem)) {
                    HStack {
                        EmojiCircleView(emojiItem: emojiItem)
                        Text(emojiItem.name)
                            .font(.headline)
                            .padding(.leading, 10)
                    } .padding(7)
                }
            }
            .navigationBarTitle("Emoji")
        }
    }
}

struct ListExample_Previews: PreviewProvider {
    static var previews: some View {
        ListExample()
    }
}

struct EmojiCircleView: View {
  let emojiItem: EmojiItem

  var body: some View {
    ZStack {
      Text(emojiItem.emoji)
        .shadow(radius: 3)
        .font(.largeTitle)
        .frame(width: 45, height: 45)
        .overlay(
          Circle().stroke(Color.purple, lineWidth: 3)
        )
    }
  }
}

struct EmojiItem: Identifiable {
    let id = UUID()
    let emoji: String
    let name: String
    let description: String
}
