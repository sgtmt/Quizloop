//
//  ResultViewController.swift
//  Quizloop
//
//  Created by 長沢　遼 on 2016/12/02.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var success_ans: UILabel!

    @IBOutlet weak var percent_answer: UILabel!
    @IBOutlet weak var all_question: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
//        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate //AppDelegateのインスタンスを取得
//        
//        success_ans.text = appDelegate.message
        // Do any additional setup after loading the view.
    }
    @IBAction func back_btn(_ sender: AnyObject) {
//        _ = navigationController?.popViewController(animated: true)
//        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
//        let storyboard: UIStoryboard = self.storyboard!
//        let nextView = storyboard.instantiateViewController(withIdentifier: "root") as! ViewController
//        self.present(nextView, animated: true)
        
//        self.dismiss(animated: true, completion: nil)
        
        let navigationVC = self.storyboard?.instantiateViewController(withIdentifier: "NavigationVC")   as! UINavigationController
        present(navigationVC, animated: false, completion: nil)
//        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
     
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        success_ans.text = appDelegate.message
        all_question.text = appDelegate.count
        percent_answer.text = appDelegate.parcentage! + "%"
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
