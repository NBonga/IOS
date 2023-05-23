//
//  ViewController.swift
//  TableVLesson
//
//  Created by DA MAC  M1 133 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }
}

//MARK: - Tableview Methods
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell else {return UITableViewCell()}
        
        
        cell.firstNameLabel.text = "John"
        cell.lastNameLabel.text = "Doe"
        cell.emailLabel.text = "johndoe@gmail.com"
        cell.imageLabel.image = UIImage(named: "Iperson.crop.circle.fill")
        
        return cell
    }
    
    
}
