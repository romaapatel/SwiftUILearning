//
//  StatePropertiesView.swift
//  SwiftUILearning
//
//  Created by Roma Patel on 17/11/22.
//

import SwiftUI

struct StatePropertiesView: View {

    @State var isHearted = false
    @State var isModal: Bool = false
    @State var numHearts = 999

    var body: some View {

            VStack {
                Image("images")
                    .resizable()
                    .padding()
                    .shadow(radius: 10)

                HStack {
                    Button {
                        self.isHearted.toggle()

                        if self.isHearted {
                            numHearts += 1
                        } else {
                            numHearts -= 1
                        }
                    } label: {

                        if isHearted {
                            Image(systemName: "heart.fill")
                        } else {
                            Image(systemName: "heart")
                        }
                    }

                    Text(String(numHearts))
                }

                Button("Submit"){
                    self.isModal = true
                }  .filledBackground(color: Color("TextColor"), textColor: Color("ButtonBackground"))
                    .padding()
                    .fullScreenCover(isPresented: $isModal, content: {
                        ListExample()
                    })

            }

    }
}

struct StatePropertiesView_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertiesView()
    }
}
