//
//  TabBarTransition.swift
//  MoviePi
//
//  Created by User on 1/26/24.
//

import UIKit

enum TabBarTransition: Int, CaseIterable {
    case showHome
    case showFavorites
    case showSettings
    
    var identifier: String { String(describing: self).capitalized }
    
    var image: UIImage? {
        return switch self {
            case .showHome: UIImage(systemName: "house.fill")
            case .showFavorites: UIImage(systemName: "heart.fill")
            case .showSettings: UIImage(systemName: "gearshape.fill")
        }
    }
    
    func coordinatorFor<R: AppRouter>(router: R) -> Coordinator {
        return switch self {
            case .showHome: HomeCoordinator(router: router)
            case .showFavorites: FavoritesCoordinator(router: router)
            case .showSettings: SettingsCoordinator(router: router)
        }
    }
}
