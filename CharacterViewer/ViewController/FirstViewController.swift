//
//  FirstViewController.swift
//  CharacterViewer
//
//  Created by Matt Mejia on 1/16/19.
//  Copyright © 2019 Matt_Mejia. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}

extension FirstViewController: UITableViewDelegate { }

extension FirstViewController: UITableViewDataSource {
    
    // Number of sections in a table.
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // number of rows in a section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    // Code for each cell in the table
    func tableview(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { return UITableViewCell }
        cell.textLabel?.text = "Test"
        
        return cell
    }
    
}
