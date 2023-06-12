//
//  HomeView.swift
//  restartApp
//
//  Created by Daniel Valenzuela on 12/06/23.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            Button(action: {
                //Code
                isOnboardingViewActive = true
            }, label: {
                Text("Restart")
            })
        } // Vstack
    }
}
/*
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
*/
