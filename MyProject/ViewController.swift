//
//  ViewController.swift
//  MyProject
//
//  Created by wayone on 2020/2/16.
//  Copyright © 2020 aaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var views: [WOPageControl] = [WOPageControl]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI_1()
        setupUI_2()
        setupUI_3()
        setupUI_4()
        
        addButton()
    }
    
    func setupUI_1() {
        let label = UILabel(frame: CGRect(x:30, y:150, width: 50, height: 20))
        self.view.addSubview(label)
        label.text = "圆形"
        
        let pageControl = WOPageControl(frame: CGRect(x:110, y:150, width: 200, height: 20))
        view.addSubview(pageControl)
        pageControl.center = CGPoint(x: pageControl.superview!.center.x, y: pageControl.center.y)
        
        pageControl.cornerRadius = 5;
        pageControl.dotHeight = 10;
        pageControl.dotSpace = 24;
        pageControl.currentDotWidth = 20;
        pageControl.otherDotWidth = 10;
        pageControl.otherDotColor = UIColor(red: 232/255.0, green: 234/255.0, blue: 236/255.0, alpha: 1)
        pageControl.currentDotColor = UIColor(red: 34/255.0, green: 34/255.0, blue: 34/255.0, alpha: 1)
        pageControl.numberOfPages = 5;
        
        views.append(pageControl)
    }
    
    func setupUI_2() {
        let pageControl = WOPageControl(frame: CGRect(x:110, y:200, width: 200, height: 20))
        view.addSubview(pageControl)
        pageControl.center = CGPoint(x: pageControl.superview!.center.x, y: pageControl.center.y)
        
        pageControl.cornerRadius = 5;
        pageControl.dotHeight = 10;
        pageControl.dotSpace = 10;
        pageControl.currentDotWidth = 20;
        pageControl.otherDotWidth = 10;
        pageControl.otherDotColor = .blue
        pageControl.currentDotColor = .red
        pageControl.numberOfPages = 5;
        
        views.append(pageControl)
    }
    
    func setupUI_3() {
        let label = UILabel(frame: CGRect(x:30, y:250, width: 50, height: 20))
        self.view.addSubview(label)
        label.text = "方形"
        
        let pageControl = WOPageControl(frame: CGRect(x:110, y:250, width: 200, height: 20))
        view.addSubview(pageControl)
        pageControl.center = CGPoint(x: pageControl.superview!.center.x, y: pageControl.center.y)
        
        pageControl.cornerRadius = 0;
        pageControl.dotHeight = 10;
        pageControl.dotSpace = 24;
        pageControl.currentDotWidth = 20;
        pageControl.otherDotWidth = 10;
        pageControl.otherDotColor = .orange
        pageControl.currentDotColor = .cyan
        pageControl.numberOfPages = 5;
        
        views.append(pageControl)
    }
    
    func setupUI_4() {
        let pageControl = WOPageControl(frame: CGRect(x:110, y:300, width: 200, height: 20))
        view.addSubview(pageControl)
        pageControl.center = CGPoint(x: pageControl.superview!.center.x, y: pageControl.center.y)
        
        pageControl.cornerRadius = 0;
        pageControl.dotHeight = 10;
        pageControl.dotSpace = 10;
        pageControl.currentDotWidth = 20;
        pageControl.otherDotWidth = 10;
        pageControl.otherDotColor = .green
        pageControl.currentDotColor = .yellow
        pageControl.numberOfPages = 5;
        
        views.append(pageControl)
    }
    
    func addButton() {
        let button1 = UIButton()
        self.view.addSubview(button1)
        button1.frame = CGRect(x:50, y:380, width: 100, height: 40)
        button1.setTitle("前一个", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.backgroundColor = .gray
        button1.addTarget(self, action: #selector(previousOne), for: .touchUpInside)
        
        let button2 = UIButton()
        self.view.addSubview(button2)
        button2.frame = CGRect(x:230, y:380, width: 100, height: 40)
        button2.setTitle("后一个", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.backgroundColor = .gray
        button2.addTarget(self, action: #selector(nextOne), for: .touchUpInside)
    }
    
    @objc
    func previousOne() {
        views.forEach {
            $0.currentPage = ($0.currentPage - 1 + $0.numberOfPages) % $0.numberOfPages
        }
    }
    
    @objc
    func nextOne() {
        views.forEach {
            $0.currentPage = ($0.currentPage + 1 + $0.numberOfPages) % $0.numberOfPages
        }
    }
}

