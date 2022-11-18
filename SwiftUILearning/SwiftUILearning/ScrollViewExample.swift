//
//  ScrollViewExample.swift
//  SwiftUILearning
//
//  Created by Roma Patel on 18/11/22.
//

import SwiftUI
import Combine

struct ScrollViewExample: View {
    
    @State var isModal: Bool = false
    
    var body: some View {
        
        VStack {
            ScrollView {
                VStack {
                    
                    ImageTextView(title: "Best programming language for beginners", subtitle: "Because you have to take it easy at first", withURL: "https://cdn.britannica.com/30/199930-131-B3D1D347/computer.jpg")
                    
                    ImageTextView(title: "Best monitors for work and play", subtitle: "You can have both worlds", withURL: "https://image.shutterstock.com/image-photo/business-man-using-computer-hand-260nw-2059017617.jpg")
                    
                    ImageTextView(title: "Best place to code", subtitle: "Focus matters a lot", withURL: "https://www.mooc.org/hubfs/applications-of-computer-programming.jpg")
                    
                    Spacer()
                }
            }
            Button ("Go to next Page") {
                self.isModal = true
            } .filledBackground(color: Color("TextColor"), textColor: Color("ButtonBackground"))
                .padding()
                .fullScreenCover(isPresented: $isModal, content: {
                    TabViewExample()
                })
            
        }
    }
}

struct ScrollViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExample()
    }
}

struct ImageTextView: View {
  
    var title: String
    var subtitle: String
    @ObservedObject var imageloader : ImageLoader
    @State var imageview: UIImage = UIImage()
    
    init(title: String, subtitle: String, withURL url : String) {
        self.title = title
        self.subtitle = subtitle
        imageloader = ImageLoader(urlString: url)
    }
    var body: some View {
        	
        VStack {
            Image(uiImage: imageview)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .onReceive(imageloader.didChange) { data in
                    self.imageview = UIImage(data: data) ?? UIImage() }
                
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                    .fontWeight(.black)
                
                Text(subtitle)
                    .font(.headline)
            }
            .padding(10)
        } .padding(.bottom, 20)
    }
}
