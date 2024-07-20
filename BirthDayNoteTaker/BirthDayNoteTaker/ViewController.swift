import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLogo: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthDayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthDayLabel: UILabel!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "birthDay")
        
        if let newName = storedName as? String {
            nameLabel.text = newName
        }
        
        if let newBirthDay = storedBirthDay as? String {
            birthDayLabel.text = newBirthDay
        }
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        //Veri Kaydetme için Kullanılır.
        UserDefaults.standard.setValue(nameTextField.text!, forKey: "name")
        UserDefaults.standard.setValue(birthDayTextField.text!, forKey: "birthDay")
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthDayLabel.text = "BirthDay: \(birthDayTextField.text!)"
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthDay = UserDefaults.standard.object(forKey: "birthDay")
        
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name"
        }
        if (storedBirthDay as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthDay")
            
        }
        
    }
    
}

