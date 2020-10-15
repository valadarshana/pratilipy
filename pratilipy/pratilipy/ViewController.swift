//
//  ViewController.swift
//  pratilipy
//
//  Created by Vijay Parmar on 15/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

struct Header {
    var strTitle:String!
    var books:[Books]!
}

struct Books {
    var strTitle:String!
    var strAuther:String!
    var strPrice:String!
}



class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    //let arrHeaders = ["Horror","LoveStory","Thriller","Espionage","FairyTell"]
    
    var arrBookHeaders = [Header]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1 = Books(strTitle: "Ek Bhool", strAuther: "i am pote", strPrice: "300")
        
        let book2 = Books(strTitle: "Hostel", strAuther: "i am pote", strPrice: "300")
        
        let book3 = Books(strTitle: "Darna mana hai", strAuther: "i am pote", strPrice: "300")
        
        
        arrBookHeaders.append(Header(strTitle: "Horror", books: [book1,book2,book3]))
        
        
        let rbook1 = Books(strTitle: "Romio Juliet", strAuther: "i am pote", strPrice: "300")
        
        let rbook2 = Books(strTitle: "Amar Kahani", strAuther: "i am pote", strPrice: "300")
        
        let rbook3 = Books(strTitle: "Saraswatichandra", strAuther: "i am pote", strPrice: "300")
        
        
        arrBookHeaders.append(Header(strTitle: "Romantic", books: [rbook1,rbook2,rbook3]))
        
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrBookHeaders.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let header = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell")as! HeaderTableViewCell
        header.lblTitle.text = arrBookHeaders[section].strTitle
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrBookHeaders[section].books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = 	tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell", for: indexPath)as! BookTableViewCell
        
        let curretSection = arrBookHeaders[indexPath.section]
        let currentRow = curretSection.books[indexPath.row]
        
        cell.lblTitle.text = currentRow.strTitle
        cell.lblAuther.text = currentRow.strTitle
        cell.lblPrice.text = arrBookHeaders[indexPath.section].books[indexPath.row].strPrice
        
        
        return cell
    }
    
    
    
}

