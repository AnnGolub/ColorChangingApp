//
//  MainViewController.swift
//  ColorChangingApp
//
//  Created by Анна Голубева on 09.04.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewColor(for settingsView: UIColor)
}

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.settingsView = view.backgroundColor
        settingsVC.delegate = self
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewColor(for settingsView: UIColor) {
        view.backgroundColor = settingsView
    }
}

