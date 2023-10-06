//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by Николай Гринько on 07.10.2023.
//

import UIKit


final class CustomTabBar: UITabBar {
    
    private let plusButton = PlusButton(type: .system)
    
    override func draw(_ rect: CGRect) {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTabBar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTabBar() {
        
        tintColor = .red
        unselectedItemTintColor = .black
    }
    
}
//MARK: Draw Shape
extension CustomTabBar {
    
    private func configureShape() {
        let path: UIBezierPath = getTabBarPath()
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.lineWidth = 3
        shape.strokeColor = UIColor.blue.cgColor
        shape.fillColor = UIColor.blue.cgColor
        layer.insertSublayer(shape, at: 0)
    }
    
    //MARK: прорисовка линий окружности
    private func getTabBarPath() -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 100, y: 0))
        
        return path
    }
    
}

