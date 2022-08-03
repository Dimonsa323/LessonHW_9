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
   
  
   
    
  
    @IBOutlet weak var createUserButton: UIButton!
    
    
    private let presenter: CreatAccountPresenterProtocol
     
    init(presenter: CreatAccountPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
