//: [Previous](@previous)
//: [Next](@next)

import SwiftUI
import PlaygroundSupport

struct Balloon: View {
    var body: some View {
        ZStack {
            Image(nsImage: NSImage(named: "balloon.png")!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 230, height: 160, alignment: .bottom)
                .overlay(
                    Text("Hello, World! My name is Ramón")
                        .foregroundColor(.black)
                        .lineLimit(nil)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                        .position(x: 115, y: 70), alignment: .center)
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.95, green: 0.92, blue: 0.71)
                .edgesIgnoringSafeArea(.all)
            HStack {
                Button(action: {
                    print("Backward")
                }) {
                    Text("Backward")
                        .foregroundColor(.black)
                }
                VStack {
                    Balloon()
//                    Image("character.png")
                    Image(nsImage: NSImage(named: "character.png")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 200, alignment: .bottomLeading)
                }
                Button(action: {
                    print("Foward")
                }) {
                    Text("Foward")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
