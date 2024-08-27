import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5,
                    "Medium": 7,
                    "Hard": 12]
    
    var timer: Timer? = nil
    
    @IBAction func onHardenessSelected(_ sender: UIButton) {
        print(eggTimes[sender.currentTitle!] ?? 0)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    var counter = 30
    
    @objc func updateCounter() {
        if counter > 0 {
            print("\(counter) seconds to the end of the world")
            counter -= 1
        } else {
            print("The world is ending!")
            timer?.invalidate()
        }
    }
}
