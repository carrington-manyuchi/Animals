//
//  ANimalViewModel.swift
//  Animals
//
//  Created by Manyuchi, Carrington C on 2025/05/06.
//

import Foundation
import SwiftUI

class AnimalViewModel: ObservableObject {
    @Published var animalModels: [AnimalModel] = []
    
    init () {
        animalModels.append(
            AnimalModel(
                image: .dog1,
                color: Color(red: 141/2255, green: 203/255, blue: 216/255),
                name: [
                    Language.english:["Dog"],
                    Language.spanish:["Perro"],
                    Language.french:["Chien", "Chieeee"]
                ]
            )
        )
        
        animalModels.append(
            AnimalModel(
                image: .eagle1,
                color: .white,
                name: [
                    Language.english:["Eagle"],
                    Language.spanish:["Aguila", "Aguilita"],
                    Language.french:["Aigle", "Aiglee"]
                ]
            )
        )
        
        animalModels.append(
            AnimalModel(
                image: .eagle2,
                color: .white,
                name: [
                    Language.english:["Eagle2"],
                    Language.spanish:["Aguila2", "Aguilita2"],
                    Language.french:["Aigle2", "Aiglee2"]
                ]
            )
        )
    }
    
    
}
