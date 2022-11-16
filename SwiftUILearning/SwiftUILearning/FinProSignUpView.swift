//
//  FinProSignUpView.swift
//  SwiftUILearning
//
//  Created by Roma Patel on 16/11/22.
//

import SwiftUI

struct DNSplashView: View {
    var body: some View {

        VStack {

            Image("SignUpImage")
                .resizable()
                .frame(width: 199.15, height: 258)
                .padding(.top, 100)

            Text("DRIP NOTE")
                .font(.system(size: 50))
                .foregroundColor(Color("TextColor"))
                .frame(width: 288, height: 59)
                .padding(.top,35.9)
                .padding([.leading, .trailing], 57)

            Text("Repetition builds brain power. Make it easy with automation.")
                .lineLimit(2)
                .padding([.leading, .trailing], 57)
                .font(.system(size: 16))
                .padding(.top,20)
                .multilineTextAlignment(.center)

            Button {
                //TODO: Action for Sign Up Button
            } label: {
                Text("SignUp")
                    .filledBackground(color: Color("TextColor"), textColor: Color("ButtonBackground"))
                    .frame(width: 298, height: 54)
                    .padding(.top, 50)
            }
            Button {
                //TODO: Action for  login button
            } label: {
                Text("Login")
                    .filledBackground(color: Color("ButtonBackground"), textColor: Color("TextColor"))
                    .frame(width: 298, height: 54)
            }

            Text("FORGOT PASSWORD")
                .font(.system(size: 18))
                .foregroundColor(Color("ForgotTextColor"))
                .frame(width: 298, height: 54)
            Spacer()
        }.ignoresSafeArea()

    }
}

struct FinProSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        DNSplashView()
    }
}

struct CustomButtonModifier: ViewModifier {
    var backgroundColor: Color
    var textColor: Color
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .font(.system(size: 14))
            .foregroundColor(textColor)
            .padding()
            .background(backgroundColor)
            .cornerRadius(30)
            .shadow(radius: 8,x: 0, y: 5)
    }
}


extension View {
    func filledBackground(color:Color, textColor: Color) -> some View {
        modifier(CustomButtonModifier(backgroundColor: color, textColor: textColor))
    }
}





