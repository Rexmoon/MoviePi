//
//  AuthenticationCoordinator.swift
//  MoviePi
//
//  Created by Jose Luna on 5/4/24.
//

import SwiftUI

final class AuthenticationCoordinator<R: AppRouter> {
    
    // MARK: - Properties
    
    private var router: R
    
    var navigationController: UINavigationController {
        get { router.navigationController }
        set { router.navigationController = newValue }
    }
    
    lazy var primaryViewController: UIViewController = {
        UIHostingController(rootView: LoginView())
    }()
    
    // MARK: - Initializers
    
    init(router: R) {
        self.router = router
    }
}

// MARK: - Coordinator

extension AuthenticationCoordinator: Coordinator {
    func start() {
        navigationController.pushViewController(primaryViewController, animated: true)
    }
}

// MARK: - Authentication Router

extension AuthenticationCoordinator: AuthenticationRouter {
    func process(route: AuthenticationTransition) {
        
    }
    
    func exit() {
        navigationController.popViewController(animated: true)
    }
}

