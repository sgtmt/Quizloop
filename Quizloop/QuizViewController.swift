//
//  QuizViewController.swift
//  Quizloop
//
//  Created by 長沢　遼 on 2016/12/02.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
      let dataArray = ["0","1","3","0","2"]
      let quizAnswer = ["1","2","3","4","5"]
      let answer_Btna = ["1","0","3","2","0"]
      let answer_Btnb = ["3","2","1","5","1"]
      let answer_Btnc = ["0","3","4","0","5"]
      let answer_Btnd = ["5","4","5","4","3"]
    
    
   // title
    @IBOutlet weak var title_QuizLabel: UILabel!
    
    //Answer　for Button
    @IBOutlet weak var qa_btn_a: UIButton!
    @IBOutlet weak var qa_btn_b: UIButton!
    @IBOutlet weak var qa_btn_c: UIButton!
    @IBOutlet weak var qa_btn_d: UIButton!
    var loop_atai:Int = 0
    var result:Int = 0
    var loop_max :Int = 0
    var seitou:Double = 0
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        title_QuizLabel.text = dataArray[loop_atai]
        qa_btn_a.setTitle(answer_Btna[loop_atai], for: UIControlState.normal)
        qa_btn_b.setTitle(answer_Btnb[loop_atai], for: UIControlState.normal)
        qa_btn_c.setTitle(answer_Btnc[loop_atai], for: UIControlState.normal)
        qa_btn_d.setTitle(answer_Btnd[loop_atai], for: UIControlState.normal)
        
        loop_max = dataArray.count

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        seitou = (Double(result)/Double(loop_max))*100
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate //AppDelegateのインスタンスを取
        appDelegate.message = String(result) //appDelegateの変数を操作
        appDelegate.count = String(loop_max)
        appDelegate.parcentage = String(format:"%.1f", seitou)
        NSLog("%d", result)
        
    }
    @IBAction func qa_btn_a(_ sender: AnyObject) {
        if(quizAnswer[loop_atai] == answer_Btna[loop_atai]){
            result = result + 1
        }
        quiz()
    }
    @IBAction func qa_btn_b(_ sender: AnyObject) {
        if(quizAnswer[loop_atai] == answer_Btnb[loop_atai]){
            result = result + 1
        }
        quiz()
    }
    @IBAction func qa_btn_c(_ sender: AnyObject) {
        if(quizAnswer[loop_atai] == answer_Btnc[loop_atai]){
            result = result + 1
        }
        quiz()
    }
    @IBAction func qa_btn_d(_ sender: AnyObject) {
        if(quizAnswer[loop_atai] == answer_Btnd[loop_atai]){
            result = result + 1
        }
        quiz()
    }
    func quiz(){
        if(loop_atai ==  4){
//            let myResultViewController: UIViewController = ResultViewController()
//            // アニメーションを設定する.
//            myResultViewController.modalTransitionStyle = UIModalTransitionStyle.partialCurl
//            // Viewの移動する.
//            self.present(myResultViewController, animated: true, completion: nil)
            
            let storyboard: UIStoryboard = self.storyboard!
            let nextView = storyboard.instantiateViewController(withIdentifier: "result") as! ResultViewController
            self.present(nextView, animated: true, completion: nil)
            
        }else{

        loop_atai = loop_atai + 1
        title_QuizLabel.text = dataArray[loop_atai]
        qa_btn_a.setTitle(answer_Btna[loop_atai], for: UIControlState.normal)
        qa_btn_b.setTitle(answer_Btnb[loop_atai], for: UIControlState.normal)
        qa_btn_c.setTitle(answer_Btnc[loop_atai], for: UIControlState.normal)
        qa_btn_d.setTitle(answer_Btnd[loop_atai], for: UIControlState.normal)
            }
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
