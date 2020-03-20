//
//  ContentView.swift
//  SwiftUIHeartPieChartCake
//
//  Created by Chang Sophia on 3/20/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        

        ZStack(alignment: .center) {
            self.content()
        VStack(spacing:0){
            CakeColorView(positionX: 0, positionY:-200, width:320, height:50, colorRed:229/255, colorGreen:181/255, colorBlue: 223/255)
            CakeColorView(positionX: 0, positionY:-200, width:320, height:50, colorRed:254/255, colorGreen:208/255, colorBlue: 209/255)
            CakeColorView(positionX: 0, positionY:-200, width:320, height:50, colorRed:248/255, colorGreen:249/255, colorBlue: 202/255)
            CakeColorView(positionX: 0, positionY:-200, width:320, height:50, colorRed:192/255, colorGreen:235/255, colorBlue: 196/255)
            CakeColorView(positionX: 0, positionY:-200, width:320, height:50, colorRed:171/255, colorGreen:217/255, colorBlue: 246/255)
            CakeColorView(positionX: 0, positionY:-200, width:320, height:50, colorRed:166/255, colorGreen:171/255, colorBlue: 229/255)
        }
         
        VStack(spacing:0){
            OneEightCircleView(positionX: 0, positionY:50, width:320, height:50, colorRed:229/255, colorGreen:181/255, colorBlue: 223/255, startAngle: Angle(90), endAngle:Angle(45))
            OneEightCircleView(positionX: 0, positionY:100, width:320, height:50, colorRed:254/255, colorGreen:208/255, colorBlue: 209/255, startAngle: Angle(135), endAngle:Angle(90))
            OneEightCircleView(positionX: 0, positionY:100, width:320, height:50, colorRed:248/255, colorGreen:249/255, colorBlue: 202/255, startAngle: Angle(180), endAngle:Angle(135))
            OneEightCircleView(positionX: 0, positionY:100, width:320, height:50, colorRed:192/255, colorGreen:235/255, colorBlue: 196/255, startAngle: Angle(225), endAngle:Angle(180))
            OneEightCircleView(positionX: 0, positionY:100, width:320, height:50, colorRed:171/255, colorGreen:217/255, colorBlue: 246/255, startAngle: Angle(270), endAngle:Angle(225))
            OneEightCircleView(positionX: 0, positionY:100, width:320, height:50, colorRed:166/255, colorGreen:171/255, colorBlue: 229/255, startAngle: Angle(315), endAngle:Angle(270))
            }
            return VStack
    }
       
    }
    
}
 
struct CakeBar: Shape {
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.move(to:CGPoint(x:rect.width, y:0))
            path.addLine(to: CGPoint(x:rect.width, y:rect.height))
            path.addLine(to:CGPoint(x:0, y:rect.height))
            path.addLine(to:CGPoint(x:0, y:0))
            path.closeSubpath()
        }
    }
}

 struct OneEightCircle: Shape {
    var startAngle: Double = 0
     var endAngle: Double = 0
 func path(in circle: CGRect) -> Path {
    
     Path { path in
               path.move(to: CGPoint(x:200, y:200))
               path.addArc(center: .init(x:200, y:200),
                           radius:150, startAngle: Angle(degrees:startAngle), endAngle: Angle(degrees: endAngle),
               clockwise: true)
              
           }
          }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

