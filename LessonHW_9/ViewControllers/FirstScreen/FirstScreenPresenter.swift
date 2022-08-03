//
//  FirstScreenPresenter.swift
//  LessonHW_9
//
//  Created by Max Stovolos on 8/2/22.
//

import Foundation
import UIKit

protocol FirstScreenPresenterProtocol {
    func showCreateScreen(view: UIViewController)
}

//MARK: - FirstScreenPresenter

class FirstScreenPresenter {
    
    private var vc: FierstScreenProtocol!
    
    func set(vc: FierstScreenProtocol) {
        self.vc = vc
    }
}

//MARK: - Private Extention

extension FirstScreenPresenter: FirstScreenPresenterProtocol {
    func showCreateScreen(view: UIViewController) {
        let presenter = CreateAccounPresenter()
        let vc = CreateAccountVC(presenter: presenter)
        view.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
