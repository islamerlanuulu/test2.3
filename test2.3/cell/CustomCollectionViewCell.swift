//
//  CustomCollectionViewCell.swift
//  test2.3
//
//  Created by Islam Erlan Uulu on 8/5/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    public let viewCVC: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 4
        view.layer.shadowOpacity = 2
        view.layer.shadowOffset = .zero
        return view
    }()
    public let labelNameFood: UILabel = {
        let label = UILabel()
        label.text  = ""
        label.textColor = #colorLiteral(red: 0.6500778198, green: 0.6500778198, blue: 0.6500778198, alpha: 1)
        label.font = .systemFont(ofSize: 19)
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(viewCVC)
        viewCVC.addSubview(labelNameFood)
        makeConstraints()
    }
    private func makeConstraints(){
        viewCVC.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-9)
            make.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
            make.width.equalTo(76)
            make.height.equalTo(1)
        }
        labelNameFood.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(8)
            make.leading.trailing.equalToSuperview().inset(20)
            make.width.equalTo(20)
            make.height.equalTo(10)
        }
        
        
        
        
        
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
