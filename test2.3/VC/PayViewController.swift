//
//  PayViewController.swift
//  test2.3
//
//  Created by Islam Erlan Uulu on 9/5/23.
//

import UIKit

class PayViewController: UIViewController {
let idCell = "cell"
    private let labelDeteil: UILabel = {
        let label = UILabel()
        label.text = "Detail"
        label.font = .systemFont(ofSize: 26)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return label
    }()
    public let viewHeart: UIView = {
        let viewPlus = UIView()
        viewPlus.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.9882352941, blue: 0.9882352941, alpha: 1)
        viewPlus.layer.cornerRadius = 10
        viewPlus.layer.borderWidth = 1
        return viewPlus
    }()
    public let imgHeart: UIImageView = {
        let imgPlus = UIImageView()
        imgPlus.image = UIImage(systemName: "heart")
        imgPlus.tintColor = .black
        return imgPlus
    }()
    public let lblNamePizza: UILabel = {
            let name = UILabel()
            name.text = ""
            name.font = .systemFont(ofSize: 38)
            name.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            return name
        }()
    public let lblNamePizza2: UILabel = {
            let name = UILabel()
            name.text = ""
            name.font = .systemFont(ofSize: 35)
            name.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            return name
        }()
   public let imgPizza = UIImageView()
    
    public  let lblSize: UILabel = {
        let label = UILabel()
        label.text = "Choose the size"
        label.font = .systemFont(ofSize: 22)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return label
    }()
    public let viewButton: UIView = {
        let viewPlus = UIView()
        viewPlus.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
        viewPlus.layer.cornerRadius = 15
        return viewPlus
    }()
    public let imgPlus2: UIImageView = {
        let imgPlus = UIImageView()
        imgPlus.image = UIImage(named: "plus")
        imgPlus.tintColor = #colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1)
        return imgPlus
    }()
    public let imgMinus: UIImageView = {
        let imgPlus = UIImageView()
        imgPlus.image = UIImage(systemName: "minus")
        imgPlus.tintColor = #colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1)
        return imgPlus
    }()
    private let label01: UILabel = {
        let label = UILabel()
        label.text = "01"
        label.font = .systemFont(ofSize: 28)
        label.textColor = #colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1)
        return label
    }()
    private let lblPrice: UILabel = {
        let label = UILabel()
        label.text = "Price"
        label.font = .systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0.5843137255, green: 0.5843137255, blue: 0.5843137255, alpha: 1)
        return label
    }()
    public let lblDengi: UILabel = {
        let labelTsena = UILabel()
        labelTsena.text = ""
        labelTsena.font = .systemFont(ofSize: 24)
        labelTsena.textColor = #colorLiteral(red: 0.1843137255, green: 0.7019607843, blue: 0, alpha: 1)
        return labelTsena
    }()
    private let button: UIButton = {
        let loginButton2 = UIButton()
        loginButton2.setTitle("Add to Card", for: .normal)
        loginButton2.layer.backgroundColor = #colorLiteral(red: 1, green: 0.6588235294, blue: 0, alpha: 1)
        loginButton2.layer.cornerRadius = 15
        return loginButton2
    }()
    private let collectionView2: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 150, height: 30.05)
//        layout.minimumLineSpacing = 1
//        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .horizontal
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.showsVerticalScrollIndicator = true
        cv.showsHorizontalScrollIndicator = false
        return cv
        
    }()
    let nameFood2: [Names] = [Names(name: "8 inch"),
                             Names(name: "20 inch"),
                             Names(name: "32 inch")
                              ]
    var ff5: Foods2?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSettings()
        makeConst()
       imgPizza.image = UIImage(named: (ff5?.imgPizza2)!)
       lblNamePizza.text = ff5?.labelNamePizza2
       lblNamePizza2.text = ff5?.labelNamePizza3
       lblDengi.text = ff5?.labelPrice2
       collectionView2.dataSource = self
        collectionView2.register(CustomCollectionViewCell.self,  forCellWithReuseIdentifier: "cell")
        
    }
    private func viewSettings(){
        view.backgroundColor = .white
        view.addSubview(labelDeteil)
        view.addSubview(viewHeart)
        viewHeart.addSubview(imgHeart)
        view.addSubview(lblNamePizza)
        view.addSubview(lblNamePizza2)
        view.addSubview(imgPizza)
        view.addSubview(lblSize)
        view.addSubview(viewButton)
        viewButton.addSubview(imgPlus2)
        viewButton.addSubview(imgMinus)
        viewButton.addSubview(label01)
        view.addSubview(lblPrice)
        view.addSubview(lblDengi)
        view.addSubview(button)
        view.addSubview(collectionView2)
    }
    
    
    private func makeConst(){
        labelDeteil.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(65)
            make.leading.equalToSuperview().offset(178)
            make.trailing.equalToSuperview().offset(181)
            make.height.equalTo(31)
            make.width.equalTo(67)
//            make.top.equalToSuperview().offset(-65)
//            make.bottom.equalToSuperview().offset(56)
//            make.leading.trailing.equalToSuperview().offset(165)
        }
        viewHeart.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(65)
            make.trailing.equalTo(-24)
            make.height.width.equalTo(45)
        }
        imgHeart.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview().inset(8)
            make.height.width.equalTo(30)
        }
        lblNamePizza.snp.makeConstraints { make in
            make.top.equalTo(labelDeteil.snp.bottom).offset(50)
            make.leading.trailing.equalTo(112)
//            make.bottom.equalToSuperview()
        }
        lblNamePizza2.snp.makeConstraints { make in
            make.top.equalTo(labelDeteil.snp.bottom).offset(90)
            make.leading.trailing.equalTo(112)
//            make.bottom.equalToSuperview()
        }
        imgPizza.snp.makeConstraints { make in
            make.top.equalTo(labelDeteil.snp.bottom).offset(140)
            make.leading.equalToSuperview().inset(50)
            make.width.equalTo(296)
            make.height.equalTo(229)
//            make.bottom.equalToSuperview()
        }
        lblSize.snp.makeConstraints { make in
            make.top.equalTo(imgPizza.snp.bottom).offset(5)
            make.leading.trailing.equalTo(125)
                }
        collectionView2.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(lblSize.snp.top).offset(23)
//            make.bottom.equalTo(tableView.snp.top).offset(20)
            make.right.equalToSuperview()
            make.height.equalTo(70)
            make.width.equalTo(50)
        }
        
        viewButton.snp.makeConstraints { make in
            make.top.equalTo(lblSize.snp.bottom).offset(65)
            make.centerX.equalToSuperview()
            make.width.equalTo(236)
            make.height.equalTo(60)
        }
        imgMinus.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(27)
            make.trailing.equalTo(-177)
            make.width.equalTo(25.42)
            make.height.equalTo(2.92)
        }
        label01.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.centerX.equalToSuperview()
            make.width.equalTo(34)
            make.height.equalTo(33)
        }
        imgPlus2.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(19)
            make.trailing.equalTo(-38.29)
            make.width.equalTo(20.42)
            make.height.equalTo(20.42)
        }
        
        lblPrice.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(700)
            make.leading.equalTo(26)
        }
        lblDengi.snp.makeConstraints { make in
            make.top.equalTo(lblPrice.snp.bottom).offset(1)
            make.leading.equalTo(26)
        }
        button.snp.makeConstraints { make in
            make.top.equalTo(viewButton.snp.bottom).offset(62)
            make.trailing.equalTo(-24)
            make.width.equalTo(178.82)
            make.height.equalTo(61)
        }
    }
}
extension PayViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        nameFood2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ff8 = nameFood2[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.labelNameFood.text = ff8.name
        
        return cell
    }
  }

