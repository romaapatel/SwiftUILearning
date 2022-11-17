//
//  DNSplashView.swift
//  SwiftUILearning
//
//  Created by Roma Patel on 16/11/22.
//

import SwiftUI

struct DNSplashView: View {

    @State private var showWelcomeView = false
    var body: some View {

        NavigationView {

            VStack {

                Spacer(minLength: 50)
                Image("SignUpImage")
                    .resizable()
                    .frame(width: 199.15, height: 258)

                Text("DRIP NOTE")
                    .font(.system(size: 50))
                    .foregroundColor(Color("TextColor"))
                    .frame(width: 288, height: 59)
                    .padding()

                Text("Repetition builds brain power. Make it easy with automation.")
                    .lineLimit(2)
                    .font(.system(size: 16))
                    .padding([.leading, .trailing], 50)
                    .multilineTextAlignment(.center)

                Button(action: { showWelcomeView = true }) {
                    Text("SignUp")
                        .filledBackground(color: Color("TextColor"), textColor: Color("ButtonBackground"))
                        .frame(width: 298, height: 54)
                        .padding()
                }
                NavigationLink("", destination:  StatePropertiesView(), isActive: $showWelcomeView)

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
}

struct DNSplashView_Previews: PreviewProvider {
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





