//
//  MedicineViewController.swift
//  aaalooo user
//
//  Created by Saim on 20/1/20.
//  Copyright © 2020 Saim Personal. All rights reserved.
//

import UIKit

class MedicineViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var medicineListTableView: UITableView!
    @IBOutlet weak var searchMedicine: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchMedicine.delegate = self
        self.medicineListTableView.delegate = self
        self.medicineListTableView.dataSource = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "medicineListCell", for: indexPath) as UITableViewCell
        
        
        return myCell
    }
}
