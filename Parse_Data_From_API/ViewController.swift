//
//  ViewController.swift
//  Parse_Data_From_API
//
//  Created by Akshay Yendhe on 03/02/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var gender: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        // Do any additional setup after loading the view.
    }
    
    func fetchData(){
        
        guard let url = URL(string: "https://tools.learningcontainer.com/sample-json.json")
        else{
            return
        }
        URLSession.shared.dataTask(with: url){
             (data, response, error) in
            guard let okData = data
            else{
                return
            }
            do
            {
                let person = try JSONDecoder().decode(Person.self, from: okData)
                
                DispatchQueue.main.async {
                    self.firstName.text = person.firstName
                    self.lastName.text = person.lastName
                    self.age.text = String(person.age)
                    self.gender.text = person.gender
                    
                }
            }
            catch
            {
                print("Error Occured")
            }
            
        }.resume()
    }




}
