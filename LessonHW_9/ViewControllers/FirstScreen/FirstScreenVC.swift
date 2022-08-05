//
//  FirstScreenVC.swift
//  LessonHW_9
//
//  Created by Max Stovolos on 8/2/22.
//

import UIKit
protocol FierstScreenProtocol {
    
}

    //MARK: - FirstScreenVC

class FirstScreenVC: UIViewController {
    
    //MARK: - IBOutletS
    
    @IBOutlet weak var nameView: UIView!
    
    @IBOutlet weak var singInButton: UIButton!
    
    @IBOutlet weak var createNewAccountButton: UIButton!
    private let presenter: FirstScreenPresenterProtocol
    
    init(presenter: FirstScreenPresenterProtocol) {
        self.presenter =  presenter
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
}

//MARK: - IBActions

extension FirstScreenVC {
    @IBAction func createAccountBuuton(_ sender: Any) {
        presenter.showCreateScreen(view: self)
    }
    @IBAction func nextScreenButtonAction(_ sender: Any) {
       
    }
}

//MARK: - Private Extentions

extension FirstScreenVC: FierstScreenProtocol {
    
}
