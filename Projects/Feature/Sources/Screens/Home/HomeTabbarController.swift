//
//  HomeTabbarController.swift
//  GitHubSearch-reactorkit-demo
//
//  Created by 9oya on 9/7/23.
//

import UIKit

public class HomeTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    public override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
    
}
