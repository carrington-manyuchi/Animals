//
//  LanguageViewModel.swift
//  Animals
//
//  Created by Manyuchi, Carrington C on 2025/05/06.
//

import Foundation
import SwiftUI

class LanguageViewModel: ObservableObject {
    @Published var languageModels: [LanguageModel] = []
    
    init () {
        languageModels.append(
            LanguageModel(language: .english, flag: .UnitedStates)
        )
        
        languageModels.append(
            LanguageModel(language: .spanish, flag: .Spain)
        )

        languageModels.append(
            LanguageModel(language: .french, flag: .France)
        )
        
    }
}
