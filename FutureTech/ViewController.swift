//
//  ViewController.swift
//  FutureTech
//
//  Created by Cenker Soyak on 29.09.2023.
//

//        container.backgroundColor = UIColor.cyan
//        view.addSubview(container)
//        container.snp.makeConstraints { make in
//            make.bottom.equalTo(-230)
//            make.left.equalTo(view.snp.left).offset(0)
//            make.right.equalTo(0)
//            make.width.equalTo(500)
//            make.height.equalTo(250)

import UIKit
import SnapKit

class ViewController: UIViewController {

    let container = UIView()
    let deviceStatus = UILabel()
    let deviceStatus2 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }
    
    func createUI(){
        
        view.backgroundColor = .white
        
        let appNameLabel = UILabel()
        appNameLabel.text = "Future Tech"
        appNameLabel.textAlignment = .center
        appNameLabel.textColor = .blue
        appNameLabel.font = UIFont.systemFont(ofSize: 35)
        view.addSubview(appNameLabel)
        appNameLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.left.equalToSuperview().offset(10)
            make.width.equalTo(180)
            make.height.equalTo(40)
        }
        let todaysDate = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let formattedDate = formatter.string(from: todaysDate)

        let currentDateLabel = UILabel()
        currentDateLabel.text = formattedDate
        currentDateLabel.textAlignment = .center
        currentDateLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(currentDateLabel)
        currentDateLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(15)
            make.left.equalTo(appNameLabel.snp.right).offset(40)
            make.width.equalTo(appNameLabel)
            make.height.equalTo(appNameLabel)
        }
        
        deviceStatus.text = "Connected"
        deviceStatus.textColor = .systemGreen
        deviceStatus.textAlignment = .right
        deviceStatus.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(deviceStatus)
        deviceStatus.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(200)
            make.right.equalTo(-25)
        }
        
        deviceStatus2.text = "Connected"
        deviceStatus2.textColor = .systemGreen
        deviceStatus2.textAlignment = .right
        deviceStatus2.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(deviceStatus2)
        deviceStatus2.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(500)
            make.right.equalTo(-25)
        }
        
        let deviceImage = UIImageView()
        deviceImage.image = UIImage(named: "phone.png")
        view.addSubview(deviceImage)
        deviceImage.snp.makeConstraints { make in
            make.top.equalTo(232)
            make.left.equalTo(view.snp.left).offset(15)
            make.right.equalTo(deviceStatus.snp.left)
            make.width.equalTo(90)
            make.height.equalTo(110)
        }
        
        let deviceImage2 = UIImageView()
        deviceImage2.image = UIImage(named: "computer.png")
        view.addSubview(deviceImage2)
        deviceImage2.snp.makeConstraints { make in
            make.bottom.equalTo(-230)
            make.left.equalTo(view.snp.left).offset(15)
            make.right.equalTo(deviceStatus2.snp.left)
            make.width.equalTo(110)
            make.height.equalTo(90)
        }
        
        let buttonOn = UIButton()
        buttonOn.setTitle("On", for: UIControl.State.normal)
        buttonOn.setTitleColor(.black, for: UIControl.State.normal)
        buttonOn.layer.borderColor = UIColor(named: "black")?.cgColor
        buttonOn.layer.borderWidth = 1.5
        buttonOn.backgroundColor = .white
        view.addSubview(buttonOn)
        buttonOn.addTarget(self, action: #selector(buttonOnClicked), for: UIControl.Event.touchUpInside)
        buttonOn.snp.makeConstraints { make in
            make.bottom.equalTo(-130)
            make.left.equalTo(view.snp.left).offset(100)
            make.width.equalTo(75)
            make.height.equalTo(50)
        }
        
        let buttonOff = UIButton()
        buttonOff.setTitle("Off", for: UIControl.State.normal)
        buttonOff.setTitleColor(.black, for: UIControl.State.normal)
        buttonOff.layer.borderColor = UIColor(named: "black")?.cgColor
        buttonOff.layer.borderWidth = 1.5
        buttonOff.backgroundColor = .white
        view.addSubview(buttonOff)
        buttonOff.addTarget(self, action: #selector(buttonOffClicked), for: UIControl.Event.touchUpInside)
        buttonOff.snp.makeConstraints { make in
            make.bottom.equalTo(-130)
            make.right.equalTo(-100)
            make.width.equalTo(75)
            make.height.equalTo(50)
        }
    }
    
    @objc func buttonOnClicked(){
        if deviceStatus.textColor == .red && deviceStatus2.textColor == .red {
            deviceStatus.text = "Connected"
            deviceStatus.textColor = .systemGreen
            deviceStatus2.text = "Connected"
            deviceStatus2.textColor = .systemGreen
        
        } else {
            }
    }
    
    @objc func buttonOffClicked(){
        if deviceStatus.textColor == .green && deviceStatus2.textColor == .green {
        } else {
            deviceStatus.text = "Not Connected"
            deviceStatus.textColor = .red
            deviceStatus2.text = "Not Connected"
            deviceStatus2.textColor = .red
        }
    }
}

