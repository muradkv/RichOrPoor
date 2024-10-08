//
//  ViewController.swift
//  RichOrPoor
//
//  Created by murad on 13.09.2024.
//

import UIKit

class BaseViewController: UIViewController {
    
    let richButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Rich", for: .normal)
        button.backgroundColor = UIColor(red: 236.0 / 255.0, green: 223.0 / 255.0, blue: 204.0 / 255.0, alpha: 1.0)
        button.setTitleColor(.brown, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.layer.cornerRadius = 10
        return button
    }()
    
    let poorButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Poor", for: .normal)
        button.backgroundColor = UIColor(red: 236.0 / 255.0, green: 223.0 / 255.0, blue: 204.0 / 255.0, alpha: 1.0)
        button.setTitleColor(.brown, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.layer.cornerRadius = 10
        return button
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Helvetica Neue", size: 40)
        label.text = "Today I am..."
        label.textColor = .systemBackground
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    private func configureUI() {
        view.addSubview(richButton)
        view.addSubview(poorButton)
        view.addSubview(titleLabel)
        
        view.backgroundColor = UIColor(red: 36.0 / 255.0, green: 73.0 / 255.0, blue: 94.0 / 255.0, alpha: 1.0)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            richButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150),
            richButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            richButton.widthAnchor.constraint(equalToConstant: 150),
            
            poorButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150),
            poorButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            poorButton.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        richButton.addTarget(self, action: #selector(richTapped), for: .touchUpInside)
        poorButton.addTarget(self, action: #selector(poorTapped), for: .touchUpInside)
    }
    
    @objc func richTapped() {
        let destination = RichViewController()
        navigationController?.pushViewController(destination, animated: true)
    }
    
    @objc func poorTapped() {
        let destination = PoorViewController()
        navigationController?.pushViewController(destination, animated: true)
    }

}

