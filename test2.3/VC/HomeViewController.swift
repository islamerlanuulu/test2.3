//
//  ViewController.swift
//  test2.3
//
//  Created by Islam Erlan Uulu on 7/5/23.
//

import UIKit
import SnapKit
class HomeViewController: UIViewController {
    let cellID = "cell"
    private let tableView = UITableView()
    private let labelHello: UILabel = {
        let label = UILabel()
        label.text = "Hello Islam!"
        label.font = .systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 0.5843137255, green: 0.5843137255, blue: 0.5843137255, alpha: 1)
        return label
    }()
    private let labelWelcome: UILabel = {
        let label = UILabel()
        label.text = "Welcome Back !"
        label.font = .systemFont(ofSize: 32)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return label
    }()
    private let searchBar: UISearchBar = {
       let searchBar = UISearchBar()
       searchBar.placeholder = "   Search"
       return searchBar
   }()
    private let imgBell: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "bell")
        image.tintColor = #colorLiteral(red: 0.262745098, green: 0.262745098, blue: 0.262745098, alpha: 1)
        return image
    }()
    private let vieworange: UIView = {
        let vieworange = UIView()
        vieworange.backgroundColor = #colorLiteral(red: 1, green: 0.6588235294, blue: 0, alpha: 1)
        vieworange.layer.cornerRadius = 10
        return vieworange
    }()
    private let collectionView: UICollectionView = {
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
    private let imgView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "imgView")
        image.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return image
    }()
    let model: [Foods] = [ Foods(imgPizza2: "pizza2",
                                 labelNamePizza2: "Pizza with",
                                 labelNamePizza3: "Mushrooms",
                                 labelTime2: "14-20 minutes",
                                 labelPrice2: "$12"),
    Foods(imgPizza2: "peperoni2",
          labelNamePizza2: "Pepperoni",
          labelNamePizza3: "Cheese Pizza",
          labelTime2: "18-25 minutes",
          labelPrice2: "$14")
    ]
    let nameFood: [Names] = [Names(name: "All"),
                             Names(name: "Pizza"),
                             Names(name: "FastFood"),
                             Names(name: "Vegan"),
                             Names(name: "New")
                                                      ]
    let food: [Foods2] = [ Foods2(imgPizza2: "mashrooms",
                                  labelNamePizza2: "Pizza With",
                                  labelNamePizza3: "Mashrooms",
                                  labelPrice2: "$12.00"),
                          Foods2(imgPizza2: "pepe",
                                 labelNamePizza2: "Pepperoni",
                                 labelNamePizza3: "Cheese Pizza",
                                 labelPrice2: "$14.00")
     ]
    var filtrList: [Foods] = []
    var isFiltred: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(FoodTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        collectionView.dataSource = self
        tableView.delegate = self
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        viewSettings()
        searchBar.delegate = self
        makeConstrains()
       
    }
    private func viewSettings(){
        view.backgroundColor = .white
        view.addSubview(labelHello)
        view.addSubview(labelWelcome)
        view.addSubview(searchBar)
        view.addSubview(imgBell)
        view.addSubview(tableView)
        view.addSubview(vieworange)
        vieworange.addSubview(imgView)
        view.addSubview(collectionView)
    }
    private func makeConstrains(){
        tableView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(60)
            make.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
        labelHello.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(65)
            make.leading.equalToSuperview().offset(24)
            make.trailing.equalToSuperview().offset(298)
            make.height.equalTo(21)
            make.width.equalTo(108)
        }
        labelWelcome.snp.makeConstraints { make in
            make.top.equalTo(labelHello.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(24)
            make.trailing.equalToSuperview().offset(177)
        }
        imgBell.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(68)
            make.trailing.equalToSuperview().offset(-31)

            make.height.equalTo(33)
            make.width.equalTo(27)
        }
        vieworange.snp.makeConstraints { make in
            make.top.equalTo(imgBell.snp.bottom).offset(68.33)
            make.trailing.equalToSuperview().offset(-24)
            make.width.equalTo(55)
            make.height.equalTo(55)
        }
        imgView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(17)
            make.leading.bottom.equalToSuperview().inset(17)
            make.height.equalTo(23.33)
            make.width.equalTo(23.21)
        }

        searchBar.snp.makeConstraints { make in
            make.top.equalTo(labelWelcome.snp.bottom).offset(36)
            make.leading.equalToSuperview().offset(24)
            make.trailing.equalTo(vieworange.snp.leading).offset(-25)
            make.width.equalTo(302)
            make.height.equalTo(55)
        }
        collectionView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(searchBar.snp.top).offset(50)
//            make.bottom.equalTo(tableView.snp.top).offset(20)
            make.right.equalToSuperview()
            make.height.equalTo(70)
            make.width.equalTo(50)
        }
        
        
    }
}
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isFiltred ? filtrList.count : model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ff3 = model[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! FoodTableViewCell
        
        cell.imgPizza.image = UIImage(named: ff3.imgPizza2)
        cell.labelNamePizza.text =  isFiltred ? filtrList[indexPath.row].labelNamePizza2 : model[indexPath.row].labelNamePizza2
        cell.labelNamePizza2.text = ff3.labelNamePizza3
        cell.labelTime.text = ff3.labelTime2
        cell.labelPrice.text = ff3.labelPrice2
        return cell
    }
    
}
extension HomeViewController: UITableViewDelegate{
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let vc =  PayViewController()
            vc.ff5 = food[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        nameFood.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ff4 = nameFood[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.labelNameFood.text = ff4.name
        return cell
    }
    
    
}

extension HomeViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            isFiltred = false
        }else{
            isFiltred = true
            filtrList = model.filter {
                $0.labelNamePizza2.contains(searchText)
            }
        
        }
        tableView.reloadData()
        
    }
   
}

