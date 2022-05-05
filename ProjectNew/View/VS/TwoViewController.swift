

import UIKit

class TwoViewController: UIViewController {
    
   
    
    //MARK: - Scroll
    let myScroll : UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()

   //MARK: - UI
    let myLabel: UILabel = {
        let label = UILabel()
        label.text = "You're app"
        label.textColor = .black
        label.textAlignment = .center
        //label.font = UIFont(name: "Ubuntu Bold", size: 32)
        label.font = .boldSystemFont(ofSize: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let myLabel2: UILabel = {
        let label = UILabel()
        label.text = "Today, 09:41"
        label.textColor = .blue
        label.backgroundColor = .clear
        label.textAlignment = .center
        //label.font = UIFont(name: "Ubuntu Bold", size: 32)
        label.font = .boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let myLabel3: UILabel = {
        let label = UILabel()
        label.text = "Tomorrow, 09:41"
        label.textColor = .blue
        label.backgroundColor = .clear
        label.textAlignment = .center
        //label.font = UIFont(name: "Ubuntu Bold", size: 32)
        label.font = .boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let stackView: UIStackView = { //вертикальный стак
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing  = 10
        stackView.backgroundColor = .clear
        return stackView
    }()
    
    private let stackViewG: UIStackView = { // горизон стак лейблы
        let stackViewG = UIStackView()
        stackViewG.alignment = .fill
        stackViewG.axis = .horizontal
        stackViewG.spacing = 10
        stackViewG.backgroundColor = .clear
        return stackViewG
    }()
    
    private let stackViewGo: UIStackView = { // горзионт стак кнопки
        let stackViewGo = UIStackView()
        stackViewGo.alignment = .fill
        stackViewGo.axis = .horizontal
        stackViewGo.spacing = 10
        stackViewGo.backgroundColor = .clear
        return stackViewGo
    }()
    
    let shapeView = TimerCircularBarView()
    
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        view.backgroundColor = UIColor(named: "mySert")
         
    }
    
    
    func setUpViews() {
        shapeView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myScroll)
        myScroll.addSubview(shapeView)
        myScroll.addSubview(myLabel)
        let contentS = myScroll.contentLayoutGuide
        let constraint = [myScroll.topAnchor.constraint(equalTo: view.topAnchor),
                          myScroll.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
                          myScroll.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20),
                          myScroll.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -20),
                          
                          myLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 67),
                          myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                          myLabel.bottomAnchor.constraint(equalTo: shapeView.topAnchor, constant: -10),
                          
                          shapeView.heightAnchor.constraint(equalTo: shapeView.widthAnchor),
                          shapeView.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 10),
                          shapeView.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: 16),
                          shapeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                          shapeView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
                            
                          stackView.topAnchor.constraint(equalTo: shapeView.bottomAnchor, constant: 16),
                          stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                          stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                          stackView.bottomAnchor.constraint(equalTo: myScroll.bottomAnchor, constant: -150)
                          
        ]
        NSLayoutConstraint.activate(constraint)
        myScroll.addSubview(stackView)
        stackView.addSubview(stackViewG)
        stackView.addSubview(stackViewGo)
        stackViewG.addSubview(myLabel2)
        stackViewG.addSubview(myLabel3)
        
        
    }
}

