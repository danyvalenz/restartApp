//
//  CircleGroupView.swift
//  restartApp
//
//  Created by Daniel Valenzuela on 20/06/23.
//

import SwiftUI

struct CircleGroupView: View {
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    var body: some View {
        ZStack {
            ZStack {
                Circle()
                    .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                    .frame(width: 260, height: 260, alignment: .center)
                Circle()
                    .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                    .frame(width: 260, height: 260, alignment: .center)
            }//Zstack
        }
    }
}
/*
struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CircleGroupView()
    }
}
*/
