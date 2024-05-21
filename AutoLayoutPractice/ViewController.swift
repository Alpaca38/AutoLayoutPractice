//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by 조규연 on 5/21/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var profileLabel: UILabel!
    @IBOutlet var chattingImageView: UIImageView!
    @IBOutlet var editImageView: UIImageView!
    @IBOutlet var storyImageView: UIImageView!
    @IBOutlet var chattingLabel: UILabel!
    @IBOutlet var editLabel: UILabel!
    @IBOutlet var storyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        profileImageView.layer.cornerRadius = 10
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.image = UIImage(named: "1")
        
        chattingImageView.image = UIImage(systemName: "bubble")
        editImageView.image = UIImage(systemName: "pencil")
        storyImageView.image = UIImage(systemName: "clock")
        
        configureLabel(label: chattingLabel, text: "나와의 채팅")
        configureLabel(label: editLabel, text: "프로필 편집")
        configureLabel(label: storyLabel, text: "카카오스토리")
    }
    
    func configureLabel(label: UILabel, text: String) {
        label.font = .systemFont(ofSize: 10)
        label.textColor = .white
        label.text = text
    }
    


}

