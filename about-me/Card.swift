//
//  Card.swift
//  about-me
//
//  Created by noor alotibi on 18/07/1445 AH.
//

import SwiftUI

struct Card: Identifiable, Equatable {
    let id: Int
    let image: Image
    let title: String
    let description: String
    let link: URL
    let isExpanded: Bool = false

   
    static func == (lhs: Card, rhs: Card) -> Bool {
        lhs.id == rhs.id
    }
}
var cards = [
    Card(id: 0, image: Image("Image 1"), title: "About me", description: "Hello, I'm Noor. I recently graduated from computer engineering and have a strong passion for technology and development for iOS devices. I have proficiency in developing mobile applications and experience in programming. I am always eager to learn and grow in the tech industry. I am passionate about using technology to solve real-world problems.", link: URL(string: "mailto:nooreealotibi@gmail.com?")!),
    Card(id: 1, image: Image("Image"), title: "Skills", description: "Problem solving - Communication - swift - python -  APIs integration.", link: URL(string: "https://www.linkedin.com/in/noor-aljuaid-09558a240/")!),
    Card(id: 3, image: Image("Image 2"), title: "Projects", description: "Red flag App Developed an AI-powered application for high-accuracy fraud detection in text data, leveraging advanced NLP techniques and machine learning algorithms.", link: URL(string: "https://github.com/nooralotibi?tab=repositories")!)
]

