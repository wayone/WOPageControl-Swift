# 小圆点 / pageControl

✨ 支持自定义

- 形状：圆形、方形。
- 大小。
- 间距。
- 颜色。

✨ 示例代码

	// 添加控件
	let pageControl = WOPageControl(frame: CGRect(x:110, y:150, width: 200, height: 20))
    view.addSubview(pageControl)
    
    pageControl.cornerRadius = 5;
    pageControl.dotHeight = 10;
    pageControl.dotSpace = 24;
    pageControl.currentDotWidth = 20;
    pageControl.otherDotWidth = 10;
    pageControl.otherDotColor = UIColor(red: 232/255.0, green: 234/255.0, blue: 236/255.0, alpha: 1)
    pageControl.currentDotColor = UIColor(red: 34/255.0, green: 34/255.0, blue: 34/255.0, alpha: 1)
    pageControl.numberOfPages = 5;

    // 修改当前页
    pageControl.currentPage = 1

###### （如果下面的图挂了，请在梯子中添加域名 githubusercontent.com）

![img](https://github.com/wayone/WOPageControl/blob/master/animation.gif)
