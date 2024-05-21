//
//  MusicViewController.swift
//  AutoLayoutPractice
//
//  Created by 조규연 on 5/21/24.
//

import UIKit

class MusicViewController: UIViewController {

    @IBOutlet var menuButton: UIButton!
    @IBOutlet var albumImageView: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var similarButton: UIButton!
    @IBOutlet var instagButton: UIButton!
    @IBOutlet var lyricLabel: UILabel!
    @IBOutlet var replayButton: UIButton!
    @IBOutlet var shuffleButton: UIButton!
    @IBOutlet var listButton: UIButton!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var eqButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        configureNavigationItem()
        configureImageView()
        
        configureButton(button: menuButton, image: UIImage(systemName: "menucard"), title: "")
        configureButton(button: likeButton, image: UIImage(systemName: "heart"), title: "101345")
        configureButton(button: similarButton, image: nil, title: "   유사곡   ")
        similarButton.layer.cornerRadius = 5
        similarButton.layer.borderWidth = 1
        similarButton.layer.borderColor = UIColor.gray.cgColor
        
        configureButton(button: instagButton, image: UIImage(systemName: "magnifyingglass"), title: "")
        
        lyricLabel.text = "가사 ~~~~"
        lyricLabel.textAlignment = .center
        lyricLabel.font = .systemFont(ofSize: 14)
        lyricLabel.textColor = .white
        
        configureButton(button: replayButton, image: UIImage(systemName: "repeat"), title: "")
        configureButton(button: shuffleButton, image: UIImage(systemName: "shuffle"), title: "")
        
        configureButton(button: listButton, image: UIImage(systemName: "list.clipboard"), title: "")
        configureButton(button: backButton, image: UIImage(systemName: "backward.fill"), title: "")
        configureButton(button: playButton, image: UIImage(systemName: "play"), title: "")
        configureButton(button: nextButton, image: UIImage(systemName: "forward.fill"), title: "")
        configureButton(button: eqButton, image: UIImage(systemName: "star"), title: "")

        
    }
    
    func configureImageView() {
        albumImageView.image = ._1
        albumImageView.layer.cornerRadius = 2
    }
    
    func configureButton(button: UIButton, image: UIImage?, title: String?) {
        button.setImage(image, for: .normal)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
    }
    
    func configureNavigationItem() {
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.title = "strawberry moon"
        let rightButton = UIBarButtonItem(image: UIImage(systemName: "star"), style: .plain, target: self, action: #selector(starButtonTapped))
        navigationItem.rightBarButtonItem = rightButton
    }
    
    @objc func starButtonTapped() {
        
    }

}
