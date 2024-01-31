//
//  SettingsCoordinator.swift
//  MoviePi
//
//  Created by User on 1/29/24.
//

import UIKit

final class SettingsCoordinator<R: AppRouter> {
    
    // MARK: - Properties
    
    private var router: R
    private var settingsNavigationController: UINavigationController!
    
    lazy var primaryViewController: UIViewController = {
        let viewController = SettingViewController()
        settingsNavigationController = UINavigationController(rootViewController: viewController)
        return viewController
    }()
    
    // MARK: - Initializers
    
    init(router: R) {
        self.router = router
    }
}

// MARK: - Coordinator

extension SettingsCoordinator: Coordinator {
    func start() { }
}

// MARK: - Router

extension SettingsCoordinator: SettingRouter {
    var navigationController: UINavigationController {
        get { settingsNavigationController }
        set { }
    }
    
    func process(route: SettingsTransition) { }
    
    func exit() { }
}
