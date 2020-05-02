//
//  MainTabBarController.swift
//  Smart Gallery 2
//
//  Created by Корістувач on 05.04.2020.
//  Copyright © 2020 kolesnikov. All rights reserved.
//

import UIKit


class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .white
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: WaterfallLayout ())
        
        let likesVC = LikesCollectionViewController(collectionViewLayout:  UICollectionViewFlowLayout())
        
        viewControllers = [ generateNavigationController(rootViewController: photosVC, title: "Photos", image: #imageLiteral(resourceName: "icons8-user")),
                            generateNavigationController(rootViewController: likesVC, title: "Favorites", image: #imageLiteral(resourceName: "icons8-contacts"))
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage)-> UIViewController{
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
