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
        
        self.viewControllers = [homeControllerTabBar, MapControllerTabBar, ProfileControllerTabBar, MoreControllerTabBar]
    }
    
    
    // MARK: - Elementos de la barra de navegación
    
    /*
     Variables tipo LAZY para evitar que carguen todos
     los controladores de golpe y que sólo se ejecuten cuando
     sea necesario
    */
    
    // HOME
    
    lazy var homeControllerTabBar: HomeViewController = {
        
        // Instanciar el controlador
        
        let homeControllerTab = HomeViewController()
        
        // Crear el TabBarItem
        let image = UIImage(named: "Home_ico")
        let selectedImage = UIImage(named: "Home_selected_ico")
        
        let tabBarItem = UITabBarItem(title: nil, image: image, selectedImage: selectedImage)
        
        // Asociar el item a la barra del menú
        
        homeControllerTab.tabBarItem =  tabBarItem
        
        // Crear el objeto
        
        return homeControllerTab
    }()
    
    // MAPA
    
    lazy var MapControllerTabBar: MapViewController = {
        
        let mapControllerTab = MapViewController()
        let image =  UIImage(named: "Map_ico")
        let selectedImage = UIImage(named: "Map_selected_ico")
        let tabBarItem = UITabBarItem(title: nil, image: image, selectedImage: selectedImage)
        mapControllerTab.tabBarItem =  tabBarItem
        
        
        return mapControllerTab
    }()
    
    // PERFIL
    
    lazy var ProfileControllerTabBar: ProfileViewController = {
        
        let profileControllerTab = ProfileViewController()
        let image = UIImage(named: "Profile_ico")
        let selectedImage = UIImage(named: "Profile_selected_ico")
        let tabBarItem = UITabBarItem(title: nil, image: image, selectedImage: selectedImage)
        profileControllerTab.tabBarItem = tabBarItem
       
        return profileControllerTab
    }()
    
    // MÁS
    
    lazy var MoreControllerTabBar: MoreViewController = {
        
        let moreControllerTab = MoreViewController()
        let image = UIImage(named: "More_ico")
        let selectedImage = UIImage(named: "More_selected_ico")
        let tabBarItem = UITabBarItem(title: nil, image: image, selectedImage: selectedImage)
        moreControllerTab.tabBarItem = tabBarItem
        
        return moreControllerTab
    }()

}

// MARK: - Métodos Delegados

extension CustomTabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Se ha seleccionado \(viewController.title!)")
    }
}
