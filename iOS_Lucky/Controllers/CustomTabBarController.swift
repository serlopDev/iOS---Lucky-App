//
//  CustomTabBarController.swift
//  iOS_Lucky
//
//  Created by Sergio López on 28/08/2020.
//  Copyright © 2020 Sergio López. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController{
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        // Creamos el array para los controladores
        
        self.viewControllers = []
    }
    
    
    // MARK: - Elementos de la barra de navegación
    
    /*
     Variables tipo LAZY para evitar que carguen todos
     los controladores de golpe y que sólo se ejecuten cuando
     sea necesario
    */
    
    // HOME
    
    lazy var homeControllerTabBar: HomeViewController = {
        
        // Instanciamos  nuestro controlador
        
        let homeControllerTab = HomeViewController()
        
        // Creamos el TabBarItem
        
        let tabBarItem = UITabBarItem(title: "Home", image: nil, selectedImage: nil)
        
        // Asociamos el item a la barra del menú
        
        homeControllerTab.tabBarItem =  tabBarItem
        
        // Creamos el objeto
        
        return homeControllerTab
    }()
    
    // MAP
    
    lazy var MapControllerTabBar: MapViewController = {
        
        let mapControllerTab = MapViewController()
        let tabBarItem = UITabBarItem(title: "Mapa", image: nil, selectedImage: nil)
        
        mapControllerTab.tabBarItem =  tabBarItem
        
        return mapControllerTab
    }()

}

// MARK: - Métodos Delegados

extension CustomTabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Se ha seleccionado \(viewController.title!)")
    }
}
