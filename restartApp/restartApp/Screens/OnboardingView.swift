//
//  OnboardingView.swift
//  restartApp
//
//  Created by Daniel Valenzuela on 12/06/23.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    @State private var buttonWidth: CGFloat = CGFloat(UIScreen.main.bounds.width - 80)
    @State private var buttonOffset: CGFloat =  0
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                // MARK: HEADER
                Spacer()
                
                VStack(spacing: 0){
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("""
                        It`s not how much we give but how much love we put into giving
                        """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                } // Vstack
                
                // MARK: CENTER
                
                ZStack{
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } // Zstack
                Spacer()
                // MARK: FOOTER
                ZStack{
                    // 1.- Backgroud(static)
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    // 2.- Call-to-Action
                    Text("Get Started")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    //3.- Capsule
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: buttonOffset + 80)
                        Spacer()
                    }// Hstack
                    
                    //4.- Circle(draggable
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(Color.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        } //Zstack
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .offset(x: buttonOffset)
                        .gesture(
                            DragGesture()
                                .onChanged { gesture in
                                    if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 80{
                                        buttonOffset = gesture.translation.width
                                    }
                                }.onEnded { _ in
                                    if buttonOffset > buttonWidth / 2 {
                                        buttonOffset = buttonWidth - 80
                                        isOnboardingViewActive = false
                                    }else {
                                        buttonOffset = 0
                                    }
                                    
                                }
                        ) // GESTURE
                        /*.onTapGesture {
                            isOnboardingViewActive = false
                        }*/
                        Spacer()
                    } //Hstack
                }// Zstack
                .frame(width: buttonWidth, height: 80, alignment: .center)
                .padding()

            } // Vstack
        } // Zstack
    }
}
/*
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
*/
