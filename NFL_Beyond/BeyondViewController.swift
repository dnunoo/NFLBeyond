//
//  BeyondViewController.swift
//  NFL_Beyond
//
//  Created by Giovane Barnes on 3/9/23.
//

import UIKit
import AVKit

class BeyondViewController: UIViewController, AVPlayerViewControllerDelegate {
    var playerController = AVPlayerViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func start_button(_ sender: Any) {
        guard let url = URL(string: "/Users/gjbarnes19students.desu.edu/Downloads/kelcey.mp4")else {return}
        let player = AVPlayer(url: url)
        playerController = AVPlayerViewController()
        playerController.player = player
        playerController.allowsPictureInPicturePlayback = true
        playerController.delegate = self
        playerController.player?.play()
        self.present(playerController, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
