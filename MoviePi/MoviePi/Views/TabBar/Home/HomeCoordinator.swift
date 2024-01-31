//
//  HomeCoordinator.swift
//  MoviePi
//
//  Created by User on 1/29/24.
//

import UIKit

final class HomeCoordinator<R: AppRouter> {
    
    // MARK: - Properties
    
    private var router: R
    private var homeNavigationController: UINavigationController!
    
    private lazy var homeViewModel: HomeViewModel = {
        HomeViewModel(router: self)
    }()
    
    lazy var primaryViewController: UIViewController = {
        let viewController = HomeViewController(viewModel: homeViewModel)
        homeNavigationController = UINavigationController(rootViewController: viewController)
        return viewController
    }()
    
    // MARK: - Initializers
    
    init(router: R) {
        self.router = router
    }
}

// MARK: - Coordinator

extension HomeCoordinator: Coordinator {
    func start() { }
}

// MARK: - Router

extension HomeCoordinator: HomeRouter {
    var navigationController: UINavigationController {
        get { homeNavigationController }
        set { }
    }
    
    func process(route: HomeTransition) { 
        /// For test navigation
        let view = FavoritesViewController()
        homeNavigationController.pushViewController(view, animated: true)
    }
    
    func exit() { }
}
