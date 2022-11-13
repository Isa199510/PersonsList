//
//  TabBarController.swift
//  PersonsList
//
//  Created by Иса on 13.11.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    private var personsList = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance

        guard let tabBarController = viewControllers else { return }
        
        tabBarController.forEach { Viewcontroller in
            if let navigationController = Viewcontroller  as? UINavigationController {
                if let firstVC = navigationController.topViewController as? PersonsListViewController {
                    firstVC.personsList = personsList
                } else if let secondVC = navigationController.topViewController as? PersonsListTwoViewController {
                    secondVC.personsList = personsList
                }
            }
        }
        
        
    }
}
