//
//  SettingsViewController.swift
//  weather
//
//  Created by Denis Evdokimov on 6/12/22.
//

import UIKit
import SwiftUI
import SnapKit

class SettingsViewController: UIViewController {
    
    let viewModel = SettingsViewModel()
    
    let cloudTop: UIImageView = {
        let cloud = UIImageView(image: UIImage(named: "cloudTop"))
        cloud.layer.opacity = 0.3
        return cloud
    }()
    
    let cloudMiddle: UIImageView = {
        let cloud = UIImageView(image: UIImage(named: "cloudMiddle"))
        return cloud
    }()
    
    let cloudBottom: UIImageView = {
        let cloud = UIImageView(image: UIImage(named: "cloudBottom"))
        return cloud
    }()
    
    let settingView: SettingsView = {
        let settingView = SettingsView(frame: .zero)
        return settingView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "customBlue")
        settingView.configureSettings(viewModel.setting)
        settingView.setupButton.onTap = setupButtonTap
        view.addSubviews([cloudTop, cloudMiddle, cloudBottom, settingView])
        configureLayout()
    }
    
    func configureLayout(){

        cloudTop.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(37)
            make.trailing.equalToSuperview().offset(-130)
        }
        cloudMiddle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(121)
            make.trailing.equalToSuperview().offset(-2.3)
        }
        cloudBottom.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-94)
            make.centerX.equalToSuperview()
        }
        
        settingView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(28)
            make.top.equalToSuperview().offset(241)
            make.trailing.equalToSuperview().offset(-27)
            make.bottom.equalToSuperview().offset(-200)
        }
        
    }
    
    func setupButtonTap(){
        let settings = settingView.returnCurrentSettings()
        viewModel.send(.tapSetup(settings))
    }

}

struct SettingsViewProvider: PreviewProvider {
    static var previews: some View {
            SettingsContainterView().edgesIgnoringSafeArea(.all).previewInterfaceOrientation(.portrait)
    }
    
    struct SettingsContainterView: UIViewControllerRepresentable {
       

        
        let vc = SettingsViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<SettingsViewProvider.SettingsContainterView>) -> SettingsViewController {
            return vc
        }
        
        func updateUIViewController(_ uiViewController: SettingsViewProvider.SettingsContainterView.UIViewControllerType,
                                    context: UIViewControllerRepresentableContext<SettingsViewProvider.SettingsContainterView>) {
            
        }
    }
}


