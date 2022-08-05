//
//  CreateAcaunt.swift
//  LessonHW_9
//
//  Created by Max Stovolos on 8/2/22.
//

import UIKit
//MARK: - CreateAccount

class CreateAccountVC: UIViewController {

    //MARK: - IBOutlets

    @IBOutlet weak var createNewUserButton: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let presenter: CreatAccountPresenterProtocol
     
    init(presenter: CreatAccountPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Action
    
    @IBAction func enterNameTextField() {
        examinationNameText()
    }
    @IBAction func enterPasswordTextField(_ sender: Any) {
        examinationPasswordText()
    }
    @IBAction func saveInfoButton() {
    show
    }
}

    //MARK: - Private Extention

extension CreateAccountVC {
    func examinationNameText() {
        guard let inputText = nameTextField.text, !inputText.isEmpty else {
            showAlert(with: "Oh", and: "Text ield is empty")
            return
        }
        guard let _ = Double(inputText) else {
            showAlert(with: "No", and: "Wrong format")
            return
        }
        nameTextField.text = ""
    }
    
    func examinationPasswordText() {
        guard let inputText = passwordTextField.text, !inputText.isEmpty else {
            showAlert(with: "Error", and: "Text ield is empty")
            return
        }
        passwordTextField.text = ""
    }
}

//MARK: - UIAlertController

extension CreateAccountVC {
    func showAlert(with title: String, and messege: String) {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.nameTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert,animated: true)
    }
}
