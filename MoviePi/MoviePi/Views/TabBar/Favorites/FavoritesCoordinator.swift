//
//  FavoritesCoordinator.swift
//  MoviePi
//
//  Created by User on 1/29/24.
//

import UIKit

final class FavoritesCoordinator<R: AppRouter> {
    
    // MARK: - Properties
    
    private var router: R
    private var favoritesNavigationController: UINavigationController!
    
    lazy var primaryViewController: UIViewController = {
        let viewController = FavoritesViewController()
        favoritesNavigationController = UINavigationController(rootViewController: viewController)
        return viewController
    }()
    
    // MARK: - Initializers
    
    init(router: R) {
        self.router = router
    }
}

// MARK: - Coordinator

extension FavoritesCoordinator: Coordinator {
    func start() { }
}

// MARK: - Router

extension FavoritesCoordinator: FavoritesRouter {
    var navigationController: UINavigationController {
        get { favoritesNavigationController }
        set { }
    }
    
    func process(route: FavoritesTransition) { }
    
    func exit() { }
}
