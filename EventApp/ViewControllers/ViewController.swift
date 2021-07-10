//
//  ViewController.swift
//  EventApp
//
//  Created by Swapanjeet Singh on 08/07/21.
//

import UIKit

var categories = [EventApp(sectionType: "Events", imageGallery: ["BookClub", "Careers", "Fitness", "Food&Drinks", "Lifestyle", "Movies", "Music", "Outdoor", "Technology"], label: ["BookClub", "Careers", "Fitness", "Food&Drinks", "Lifestyle", "Movies", "Music", "Outdoor", "Technology"]),
                  
                  EventApp(sectionType: "Places", imageGallery: ["Japan", "Germany", "London", "NYC","SFO", "Paris", "budapest", "copenhagen", "netherlands"],
                           label: ["Japan", "Germany", "London", "NYC","SFO", "Paris", "Budapest", "Copenhagen", "Netherlands"]),
                  EventApp(sectionType: "Automobiles", imageGallery: ["autoracing", "cars", "femalebiker", "fourbyfour", "formula1", "jeep", "offroading", "sportbikes", "sportscar"], label: ["Autoracing", "Cars", "Femalebiker", "Fourbyfour", "Formula1", "Jeep", "Offroading", "Sportbikes", "Sportscar"])]

class ViewController: UIViewController {
    
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func exploreButton(_ sender: Any) {
        print("Explore Button Pressed")
    }
    @IBAction func myWishlist(_ sender: Any) {
        print("Wishlist Button Pressed")
    }
    @IBAction func searchButton(_ sender: Any) {
        print("Search Button Pressed")
    }
    @IBAction func messagesButton(_ sender: Any) {
        print("Message Button Pressed")
    }
    @IBAction func myProfileButton(_ sender: Any) {
        print("My profile Button Pressed")
    }

}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section].sectionType
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell") as! CategoryRow
        cell.myCollectionView.tag = indexPath.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        if let textlabel = header.textLabel {
            textlabel.font = textlabel.font.withSize(20)
        }
        view.tintColor = .gray
    }
    
}


