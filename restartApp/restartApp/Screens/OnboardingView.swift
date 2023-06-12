//
//  OnboardingView.swift
//  restartApp
//
//  Created by Daniel Valenzuela on 12/06/23.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("OnBoarding")
                .font(.largeTitle)
            
            Button(action: {
                // code
                isOnboardingViewActive = false
            }, label: {
                Text("Start")
            })
        } //Vstack
    }
}
/*
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
*/
