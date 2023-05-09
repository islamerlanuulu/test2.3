//
//  FoodTableViewCell.swift
//  test2.3
//
//  Created by Islam Erlan Uulu on 7/5/23.
//

import UIKit
import SnapKit
class FoodTableViewCell: UITableViewCell {
    private let bgView = UIView()
     let imgPizza = UIImageView()
    public let labelNamePizza: UILabel = {
            let name = UILabel()
            name.text = ""
            name.font = .systemFont(ofSize: 30)
            name.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            return name
        }()
    public let labelNamePizza2: UILabel = {
            let name = UILabel()
            name.text = ""
            name.font = .systemFont(ofSize: 27)
            name.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            return name
        }()
        public let imgTime: UIImageView = {
            let img = UIImageView()
            img.image = UIImage(systemName: "stopwatch")
            img.tintColor = #colorLiteral(red: 0.7675942779, green: 0.7675942779, blue: 0.7675942779, alpha: 1)
            return img
        }()
    public let labelTime: UILabel = {
          let labelTime = UILabel()
          labelTime.text = ""
          labelTime.font = .systemFont(ofSize: 12)
          labelTime.textColor = #colorLiteral(red: 0.7176470588, green: 0.7176470588, blue: 0.7176470588, alpha: 1)
          return labelTime
      }()
        public let labelPrice: UILabel = {
            let labelTsena = UILabel()
            labelTsena.text = ""
            labelTsena.font = .systemFont(ofSize: 24)
            labelTsena.textColor = #colorLiteral(red: 0.1843137255, green: 0.7019607843, blue: 0, alpha: 1)
            return labelTsena
        }()
        public let viewPlus: UIView = {
            let viewPlus = UIView()
            viewPlus.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
            viewPlus.layer.cornerRadius = 10
            return viewPlus
        }()
        public let imgPlus: UIImageView = {
            let imgPlus = UIImageView()
            imgPlus.image = UIImage(named: "plus")
            return imgPlus
        }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(bgView)
        bgView.addSubview(imgPizza)
        bgView.addSubview(labelNamePizza)
        bgView.addSubview(labelNamePizza2)
        bgView.addSubview(imgTime)
        bgView.addSubview(labelTime)
        bgView.addSubview(labelPrice)
        bgView.addSubview(viewPlus)
        viewPlus.addSubview(imgPlus)
        bgView.backgroundColor = .white
        bgView.layer.cornerRadius = 15
        bgView.layer.borderWidth = 1
        viewPlus.layer.borderWidth = 1
        
    
//Constraints
        bgView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(30)
            make.trailing.leading.equalToSuperview().inset(20)
            make.height.equalTo(184)
            make.width.equalTo(350)
        }
              imgPizza.snp.makeConstraints { make in
                  make.top.equalToSuperview()
                  make.bottom.equalToSuperview()
                  make.leading.equalTo(0)
                  make.height.equalTo(210.29)
                  make.width.equalTo(210)
                }
               labelNamePizza.snp.makeConstraints { make in
                    make.top.equalToSuperview().offset(-90)
                    make.bottom.equalToSuperview()
                    make.leading.equalTo(imgPizza.snp.trailing).offset(-21)
                    make.trailing.equalTo(1)
                    make.height.equalTo(68)
                }
              labelNamePizza2.snp.makeConstraints { make in
                   make.top.equalTo(labelNamePizza.snp.bottom).offset(-220)
                   make.bottom.equalToSuperview()
                   make.leading.equalTo(imgPizza.snp.trailing).offset(-21)
                   make.trailing.equalTo(1)
                   make.height.equalTo(68)
                }
             imgTime.snp.makeConstraints { make in
                  make.top.equalTo(labelNamePizza2.snp.bottom).offset(-80)
                  make.leading.equalTo(imgPizza.snp.trailing).offset(-21)
                }
        labelTime.snp.makeConstraints { make in
            make.top.equalTo(labelNamePizza2.snp.bottom).offset(-140)
            make.leading.equalTo(imgTime.snp.trailing).offset(5)
            make.bottom.equalToSuperview()
        }
        labelPrice.snp.makeConstraints { make in
            make.top.equalTo(labelNamePizza2.snp.bottom).offset(-70)
            make.leading.equalTo(imgPizza.snp.trailing).offset(-21)
            make.bottom.equalToSuperview()
        }
        viewPlus.snp.makeConstraints { make in
            make.top.equalTo(labelNamePizza2.snp.bottom).offset(-55)
            make.trailing.equalTo(-18)
            make.width.height.equalTo(40)
        }
        imgPlus.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview().inset(11)
            
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

