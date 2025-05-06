//
//  AnimalImageView.swift
//  Animals
//
//  Created by Manyuchi, Carrington C on 2025/05/06.
//

import SwiftUI

struct AnimalImageView: View {
    
    var animalModel: AnimalModel
    let dim = 0.9 * UIScreen.main.bounds.size.width
    let width = UIScreen.main.bounds.width
    
    var body: some View {

        Image(animalModel.image.rawValue)
            .resizable()
            .frame(width: dim, height: dim)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(
                    animalModel.color,
                    lineWidth: 5
                )
            }
            .shadow(radius: 10)
            .frame(width: width, height: width)
    }
}

#Preview {
    AnimalImageView(
        animalModel: AnimalModel(
            image: .dog1,
            color: Color(red: 141/2255, green: 203/255, blue: 216/255),
            name: [
                Language.english:["Dog"],
                Language.spanish:["Perro"],
                Language.french:["Chien", "Chieeee"]
            ]
        )
    )
}
