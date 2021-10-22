//
//  ViewController.swift
//  DzOne
//
//  Created by Антон Бурханов on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var LabelCount: UILabel!
    @IBOutlet weak var LabelStatus: UILabel!
    @IBOutlet weak var ButtonUp: UIButton!
    @IBOutlet weak var ButtonDown: UIButton!
    @IBOutlet weak var ButtonReset: UIButton!
    @IBOutlet weak var LabelAlert: UILabel!
    @IBOutlet weak var ButtonProgress: UIButton!
    @IBOutlet weak var LabelDownloaad: UILabel!
    @IBOutlet weak var ProgressView: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var Count = 0
    
    func define(Coun: Int){
        switch Coun {
            case -10:
                LabelStatus.textColor = .red
                LabelCount.textColor = .red
                LabelStatus.text = "Вредный кактус, будет удалять файлы с компьютера пока вас нет дома."
                ButtonDown.isEnabled = false
                ButtonUp.isEnabled = true
                LabelAlert.text = "я же предупреждал..."
           case -9:
                LabelStatus.textColor = .red
                LabelCount.textColor = .red
                LabelStatus.text = "Вредный кактус, будет удалять файлы с компьютера пока вас нет дома."
                ButtonDown.isEnabled = true
                ButtonUp.isEnabled = true
                LabelAlert.text = "Следующее значение последнее!"
            case -8,-7,-6,-5:
                LabelStatus.textColor = .red
                LabelCount.textColor = .red
                LabelStatus.text = "Вредный кактус, будет удалять файлы с компьютера пока вас нет дома."
                ButtonDown.isEnabled = true
                ButtonUp.isEnabled = true
                LabelAlert.text = ""
            case -4,-3,-2,-1:
                LabelStatus.textColor = .orange
                LabelCount.textColor = .orange
                LabelStatus.text = "Кактус средней противности, обзывается матом, и кидается карандашами"
                ButtonDown.isEnabled = true
                ButtonUp.isEnabled = true
                LabelAlert.text = ""
            case 10:
                LabelStatus.textColor = .green
                LabelCount.textColor = .green
                LabelStatus.text = " Слишком хороший кактус, скорее в сравнении с ним вас захотят выгнать из дома.  "
                ButtonDown.isEnabled = true
                ButtonUp.isEnabled = false
                LabelAlert.text = "я же предупреждал..."
            case 9:
                LabelStatus.textColor = .green
                LabelCount.textColor = .green
                LabelStatus.text = " Слишком хороший кактус, скорее в сравнении с ним вас захотят выгнать из дома.  "
                ButtonDown.isEnabled = true
                ButtonUp.isEnabled = true
                LabelAlert.text = "Следующее значение последнее!"
            case 8,7,6,5:
                LabelStatus.textColor = .green
                LabelCount.textColor = .green
                LabelStatus.text = " Слишком хороший кактус, скорее в сравнении с ним вас захотят выгнать из дома.  "
                ButtonDown.isEnabled = true
                ButtonUp.isEnabled = true
                LabelAlert.text = ""
            
            default:
                LabelStatus.textColor = .yellow
                LabelCount.textColor = .yellow
                LabelStatus.text = "Cтандартный скучный кактус, через полгода покроется пылью. "
                ButtonDown.isEnabled = true
                ButtonUp.isEnabled = true
                LabelAlert.text = ""
                LabelDownloaad.text = " "
                 }
        }
    


    
    @IBAction func ButtonUp(_ sender: Any) {
        Count = Count + 1
        define (Coun: Count)
        LabelCount.text = String (Count)
        LabelDownloaad.text = " "
        }
        
    @IBAction func ButtonDown(_ sender: Any) {
        Count = Count - 1
        define (Coun: Count)
        LabelCount.text = String (Count)
        LabelDownloaad.text = " "
    }
    @IBAction func ButtonReset(_ sender: Any) {
        Count = 0
        LabelCount.text = String (Count)
        ButtonDown.isEnabled = true
        ButtonUp.isEnabled = true
        LabelStatus.textColor = .orange
        LabelCount.textColor = .orange
        LabelStatus.text = "Cтандартный скучный кактус, через полгода покроется пылью."
        LabelAlert.text = " "
        LabelDownloaad.text = " "
        ProgressView.progress = 0
    }
    
    
    
    
    @IBAction func ButtonProgressBar(_ sender: Any) {
        for i in 1...10{
            ProgressView.progress = Float (i/10)
            //sleep(5)
        }
        
        LabelDownloaad.text = "Настройки загруженны в ваш кактус!"
    }
}
