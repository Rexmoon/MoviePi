//
//  AppTransition.swift
//  MoviePi
//
//  Created by User on 1/26/24.
//

enum AppTransition {
    case showAuthentication
    case showTabBar
    
    var identifier: String { String(describing: self) }
    
    func coordinatorFor<R: AppRouter>(router: R) -> Coordinator {
        return switch self {
            case .showTabBar: TabBarCoordinator(router: router)
            case .showAuthentication: AuthenticationCoordinator(router: router)
        }
    }
}
