import UIKit
import TransitionButton

class ViewController: UIViewController
{
    let animateButton = TransitionButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        animateButton.center = view.center
        animateButton.backgroundColor = .systemGreen
        animateButton.setTitle("Click Here", for: .normal)
        animateButton.setTitleColor(.black, for: .normal)
        animateButton.cornerRadius = 12
        animateButton.addTarget(self, action: #selector(didTapAnimateButton), for: .touchUpInside)
        animateButton.spinnerColor = .systemBlue
        
        view.addSubview(animateButton)
    }
    
    @objc func didTapAnimateButton()
    {
        animateButton.startAnimation()
        
        DispatchQueue.main.asyncAfter(deadline: .now()+4)
        {
            self.animateButton.stopAnimation(animationStyle: .expand, revertAfterDelay: 1)
            {
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5)
                {
                    let vc = ViewController2()
                    self.present(vc, animated: true)
                }
            }
        }
    }
}
