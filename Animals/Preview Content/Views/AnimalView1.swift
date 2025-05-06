//
//  ContentView.swift
//  Animals
//
//  Created by Manyuchi, Carrington C on 2025/05/06.
//

import SwiftUI

struct AnimalView1: View {
    @StateObject var animalViewModel: AnimalViewModel = AnimalViewModel()
    @StateObject var languageViewModel: LanguageViewModel = LanguageViewModel()
    
    @State private var currentLanguage: Language = .english
    @State private var currentImageIndex: Int = 0
    
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                
                HStack {
                    ForEach(languageViewModel.languageModels) { languageModel in
                        
                        let selected = currentLanguage == languageModel.language
                        
                        VStack(spacing: 0) {
                            let text = languageModel.language.rawValue
                            Text(text)
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.white)
                                .padding()
                            
                            
                            if let flag = languageModel.flag {
                                Image(flag.rawValue)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                    .shadow(radius: 5)
                            }
                        }
                        .padding()
                        .opacity(selected ? 1 : 0.3)
                        .scaleEffect(selected ? 1.2 : 1)
                        .onTapGesture {
                            withAnimation {
                                currentLanguage = languageModel.language
                            }
                        }
                    }
                    
                }
                
                let currentAnimalModel: AnimalModel = animalViewModel.animalModels[currentImageIndex]
                AnimalImageView(animalModel: currentAnimalModel)
                    .onTapGesture {
                        let animalName = currentAnimalModel.getAnimalName(in: currentLanguage)
                        
                        utter(text: animalName, language: currentLanguage)
                    }
                
                Spacer()
                
                HStack {
                    Image(systemName: "arrow.left.square")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .onTapGesture {
                            print("Left Arrow Tapped")
                            currentImageIndex = currentImageIndex > 0 ? currentImageIndex - 1 : 0
                        }
                    
                    Spacer()

                    Image(systemName: "arrow.right.square")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.white)
                        .onTapGesture {
                            currentImageIndex = currentImageIndex < animalViewModel.animalModels.count - 1 ? currentImageIndex + 1 : animalViewModel.animalModels.count - 1
                        }
                }
                .padding()
            }
            
            
        }
    }
}

#Preview {
    AnimalView1()
}
