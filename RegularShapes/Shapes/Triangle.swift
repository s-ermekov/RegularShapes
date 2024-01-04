//
//  EquilateralTriangle.swift
//  RegularShapes
//
//  Created by macOS on 04.01.2024.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        let triangleHeight = (sqrt(3.0) / 2.0) * rect.width
        let triangle = Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY - triangleHeight / 2.0))
            path.addLine(to: CGPoint(x: rect.midX - rect.width / 2.0, y: rect.midY + triangleHeight / 2.0))
            path.addLine(to: CGPoint(x: rect.midX + rect.width / 2.0, y: rect.midY + triangleHeight / 2.0))
            path.closeSubpath()
        }
        return triangle
    }
}

#Preview {
    Triangle()
        .stroke(.red, lineWidth: 3)
        .frame(width: 200)
}
