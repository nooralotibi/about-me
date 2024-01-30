//
//  ContentView.swift
//  about-me
//
//  Created by noor alotibi on 17/07/1445 AH.
//


import SwiftUI

struct ContentView: View {

    @State private var selectedCard: Card? = nil

    var body: some View {
        Text("About me")
            .font(.largeTitle)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity,alignment: .topLeading)
            .padding()
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                ForEach(cards) { card in
                    CardView(card: card, isSelected: card.id == selectedCard?.id)
                        .onTapGesture {
                            withAnimation {
                                selectedCard = card == selectedCard ? nil : card
                            }
                        }
                }
            }
            .padding()
        }
    }
}

struct CardView: View {
    let card: Card
    let isSelected: Bool

    var body: some View {
        ZStack {

            RoundedRectangle(cornerRadius: 25)
                .fill(LinearGradient(colors: [Color.purple, Color.blue ], startPoint: .top, endPoint: .bottom))


            VStack(alignment: .leading) {
                card.image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 220)

                Text(card.title)
                    .font(.headline)
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity,alignment: .topLeading)
                  
                if isSelected {
                    Text(card.description)
                        .font(.body)
                        .padding(.top,-10)
                    Link(destination: card.link) {
                    Text("More")
                        .font(.body)
                        .foregroundColor(.white)
                        .padding(.top,-6)
                          }
                }
            }
            .padding()
        }
            .scaleEffect(x: isSelected ?
                     0.9 : 1, y: isSelected ? 1 : 1)
        
           .opacity(isSelected ? 0.9 : 0.8)
    }
}

#Preview {
    ContentView()
}
