//
//  App.swift
//  MoviePi
//
//  Created by User on 1/26/24.
//

import UIKit

final class App {
    
    // MARK: - Properties
    
    var navigationController: UINavigationController = .init()
    
    var primaryViewController: UIViewController { .init() }
}

// MARK: Coordinator

extension App: Coordinator {
    func start() {
        process(route: .showAuthentication)
    }
}

// MARK: - App Router

extension App: AppRouter {
    func process(route: AppTransition) {
        let coordinator = route.coordinatorFor(router: self)
        coordinator.start()
        
        print(route.identifier)
    }
    
    func exit() {
        navigationController.popToRootViewController(animated: true)
    }
}
