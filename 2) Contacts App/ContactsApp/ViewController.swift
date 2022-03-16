//
//  ViewController.swift
//  ContactsApp
//
//  Created by César on 16/02/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var contacts:[Contact] = []
    var people: [String] = []
    var avatars: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        people = ["Antonio Rentería", "Asael Martínez", "Jonathan Rivas", "Ana Sánchez", "Juan Antonio Macías", "Ezequiel González", "Alejandra Bautista", "Mario Hernández", "Juan Pérez", "Luis Naranjo", "Moni González", "Linda Soto", "Diego Ávalos", "Ricardo Carvajal", "Gustavo Soria"]
        
        avatars = ["avatar1", "avatar2", "avatar2", "avatar14", "avatar1", "avatar4", "avatar14", "avatar7", "avatar5", "avatar7", "avatar6", "avatar11", "avatar2", "avatar5", "avatar2"]
        
        
        for index in 0...14
        {
            contacts.append(Contact(avatarName: avatars[index], personName: people[index]))
        }
        
    }

    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        //cell.textLabel?.text  = people[indexPath.row]
        
        cell.textLabel?.text  = contacts[indexPath.row].personName
        
        //cell.imageView!.image = UIImage(named: avatars[indexPath.row])!
        cell.imageView!.image = UIImage(named: contacts[indexPath.row].avatarName)!
       
        return cell
        
    }

}

