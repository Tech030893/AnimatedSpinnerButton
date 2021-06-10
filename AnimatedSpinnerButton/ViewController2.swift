import UIKit
import TransitionButton

class ViewController2: CustomTransitionViewController
{
    let welcomeLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        
        welcomeLabel.center = view.center
        welcomeLabel.text = "WELCOME"
        welcomeLabel.font = .systemFont(ofSize: 30, weight: .semibold)
        welcomeLabel.textAlignment = .center
        welcomeLabel.textColor = .black
        
        view.addSubview(welcomeLabel)
    }
}
