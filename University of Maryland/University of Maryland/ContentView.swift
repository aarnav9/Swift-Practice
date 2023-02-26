//
//  ContentView.swift
//  University of Maryland Tinder
//  Home page
//  Created by Aarnav Devulapalli on 8/30/22.
//

import SwiftUI

struct ContentView: View {
    @State var offset: CGSize = .zero
    var body: some View {
        
        VStack {
            HStack {
                Text("University of Maryland")
                .padding()
                Spacer()
                Button("Messages",action: {
                    print("lmao")
                })
                .padding()
            }
        Divider()
        Spacer()
            ZStack {
                Button(action: {print("lmao")}, label: {
                    Image("Image")
                        .resizable()
                        .scaledToFill()
                        .onTapGesture(count: 2, perform: {print("Save")})
                        .offset(offset)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    withAnimation(.spring()) {
                                        offset = value.translation
                                    }
                                }
                                .onEnded { value in
                                    withAnimation(.spring()) {
                                        offset = value.predictedEndTranslation
                                    }
                                }
                        )
                })
                HStack {
                    VStack {
                        Spacer()
                        Text("Burj Khalifa")
                            .font(.system(size: 32, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                            .padding(5)
                        Text ("Freshman")
                            .font(.system(size: 32, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                            .padding(5)
                            }
                    .padding(40)
                Spacer()
                }
                .offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                offset = value.translation
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                offset = CGSize(width: 0, height: 0)
                            }
                        }
                )
            }
        Spacer()
        Divider()
            HStack {
                Spacer()
                Button("Search",action: {
                    print("lmao")
                })
                Spacer()
                Button("Stories",action: {
                    print("lmao")
                })
                Spacer()
                Button("Upload",action: {
                    print("lmao")
                })
                Spacer()
                Button("Account",action: {
                    print("lmao")
                })
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
