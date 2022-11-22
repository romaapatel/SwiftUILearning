//
//  DNLoginView.swift
//  SwiftUILearning
//
//  Created by Roma Patel on 21/11/22.
//

import SwiftUI

struct DNLoginView: View {
    @State var email : String = ""
    @FocusState var focused: Bool
    var body: some View {
        
        VStack {
            ScrollView {
                Spacer(minLength: 50)
                headerView
                
                cardView
                    .padding(.top, 30)
                

            }
        }
    }
    
    private var cardView: some View {
        VStack {
            Spacer()
            Text("Phone Number")
                .padding()
            Divider()
                .padding(.horizontal,30)
            
            ZStack {
                TextField("", text: $email)
                    .foregroundColor(Color("TextColor"))
                    .multilineTextAlignment(.center)
                    .focused($focused)
                    .keyboardType(.numberPad)
            }
            .padding(.horizontal,30)
            
            Divider()
                .padding(.bottom, 10)
                .padding(.horizontal,30)
            
            Button {
                
            } label: {
                Text ("Continue")
                    .filledBackground(color: Color("TextColor"), textColor: Color("ButtonBackground"))
                    .padding(.top,97)
                    .padding(.bottom,20)
                    .padding(.horizontal, 20)
            } .disabled(true)

            
        }
        .frame(width: 345, height: 357)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: Color("ShadowColor"), radius: 25, x: 0, y: 5)
    }
    
    private var headerView : some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Image("BackArrow")
                        .frame(width: 23, height: 20)
                    
                }
                .padding(.leading,17)
                Spacer()
            }

            Text("What’s your phone number?")
                .font(.system(size: 32))
                .foregroundColor(Color("TextColor"))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                
        }.ignoresSafeArea()
    }
}

struct DNLoginView_Previews: PreviewProvider {
    static var previews: some View {
        DNLoginView()
    }
}

