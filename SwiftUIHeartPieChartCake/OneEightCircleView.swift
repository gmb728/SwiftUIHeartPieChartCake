//
//  OneEightCircleView.swift
//  SwiftUIHeartPieChartCake
//
//  Created by Chang Sophia on 3/20/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct OneEightCircleView: View {
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var width: CGFloat = 0
    var height: CGFloat = 0
    var colorRed: Double = 1.1
    var colorGreen: Double = 1.1
    var colorBlue: Double = 1.1
     
    
    var body: some View {
      OneEightCircle()
        .fill(Color(red:colorRed, green: colorGreen, blue:colorBlue))
        .frame(width: width, height: height)
        .offset(x:positionX, y: positionY)
    }
    
}

 

struct OneEightCircleView_Previews: PreviewProvider {
    static var previews: some View {
        OneEightCircleView()
    }
}
