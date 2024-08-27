import UIKit
import AVFAudio
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print()
        playSound(soundName: sender.currentTitle ?? "")
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(
            forResource: soundName,
            withExtension: "wav"
        )
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
