import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print("Start")
        let delay = 0.2
        
        sender.layer.opacity = 0.5
        
        playSound(keyToPlay: sender.currentTitle!)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            print(delay)
            sender.layer.opacity = 1.0
        }
    }
    
    func playSound(keyToPlay: String) {
        let url = Bundle.main.url(forResource: "\(keyToPlay)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
