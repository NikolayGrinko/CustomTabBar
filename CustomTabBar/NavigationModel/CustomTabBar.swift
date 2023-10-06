//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by Николай Гринько on 06.10.2023.
//

import UIKit


class CustomTabBar: UITabBar {
    
    private let plusButton = PlusButton(type: .system)
    
    override func draw(_ rect: CGRect) {
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTabBar() {
        
        tintColor = .red
        unselectedItemTintColor = .black
    }
    
}
