//
//  HomeViewModel.swift
//  MoviePi
//
//  Created by User on 1/31/24.
//

final class HomeViewModel<R: HomeRouter> {
    
    // MARK: - Properties
    
    private let router: R
    
    // MARK: - Initializers
    
    init(router: R) {
        self.router = router
    }
}

// MARK: - Navigation

extension HomeViewModel {
    func didTapItem() {
        router.process(route: .showDetail)
    }
}
