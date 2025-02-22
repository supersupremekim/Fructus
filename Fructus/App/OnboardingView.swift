//
//  OnboardingView.swift
//  Fructus
//
//  Created by 김동환 on 2021/06/16.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0..<self.fruits.count]){ item in
                // FruitCardView()
                FruitCardView(fruit: item)
                
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}


//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
