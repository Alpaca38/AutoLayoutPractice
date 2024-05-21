//
//  BaeMinViewController.swift
//  AutoLayoutPractice
//
//  Created by 조규연 on 5/21/24.
//

import UIKit

class BaeMinViewController: UIViewController {
    
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var searchImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint

        configureNav()
        configureTextField()
    }
    
    func configureNav() {
        navigationItem.title = "회사"
        
        let menuButton = UIBarButtonItem(customView: createButton(image: .menu))
        navigationItem.leftBarButtonItem = menuButton
        
        let notificationButton = UIBarButtonItem(customView: createButton(image: .notification))
        let profileButton = UIBarButtonItem(customView: createButton(image: .profile))
        navigationItem.rightBarButtonItems = [
            notificationButton, profileButton
        ]
    }
    
    func configureTextField() {
        searchImageView.tintColor = .systemMint
        searchImageView.image = UIImage(systemName: "magnifyingglass")
        searchTextField.leftView = searchImageView
        searchTextField.leftViewMode = .always
        searchTextField.placeholder = "포케? 돈까스? 커리?"
    }
    
    
    func createButton(image: UIImage?) -> UIButton {
        let button = UIButton()
        button.setImage(image, for: .normal)
        button.setTitle("", for: .normal)
        
        return button
    }

}


