//
//  Router.swift
//  MoviePi
//
//  Created by User on 1/26/24.
//

import UIKit

protocol Router {
    associatedtype Route
    
    var navigationController: UINavigationController { get set }
    
    func process(route: Route)
    func exit()
}
