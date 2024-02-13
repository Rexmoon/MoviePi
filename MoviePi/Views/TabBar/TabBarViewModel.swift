//
//  TabBarViewModel.swift
//  MoviePi
//
//  Created by User on 1/26/24.
//

final class TabBarViewModel<R: TabBarRouter> {
    
    // MARK: - Properties
    
    private let router: R
    
    // MARK: - Initializers
    
    init(router: R) {
        self.router = router
    }
}

// MARK: - Navegation

extension TabBarViewModel {
    func didSelect(tag: Int) {
        guard let transition = TabBarTransition(rawValue: tag) else { return }
        router.process(route: transition)
    }
}
